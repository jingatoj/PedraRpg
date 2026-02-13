require("rrpg.lua")
require("ndb.lua")
require("rrpgObjs.lua")
function getRootSheet(node)
  if node == nil then return nil end
  local ok, r = pcall(ndb.getRoot, node)
  if ok then return r end
  return nil
end

local function n(v)
  v = tonumber(v)
  if v == nil then return 0 end
  return v
end

local tabelaVida = {
[1]=8,[2]=16,[3]=24,[4]=32,[5]=40,[6]=48,[7]=56,[8]=64,[9]=72,[10]=80,
[11]=88,[12]=96,[13]=108,[14]=120,[15]=132,[16]=144,[17]=156,[18]=168,
[19]=180,[20]=200,[21]=220,[22]=240,[23]=260,[24]=280,[25]=300,
[26]=320,[27]=340,[28]=360,[29]=380,[30]=500
}

local tabelaMana = {
[1]=1,[2]=2,[3]=3,[4]=4,[5]=5,[6]=6,[7]=7,[8]=8,[9]=9,[10]=10,
[11]=11,[12]=12,[13]=13,[14]=15,[15]=17,[16]=19,[17]=21,[18]=23,
[19]=24,[20]=28,[21]=31,[22]=34,[23]=37,[24]=41,[25]=50,
[26]=55,[27]=60,[28]=65,[29]=70,[30]=100
}

local tabelaProf = {
[1]=2,[2]=2,[3]=3,[4]=3,[5]=3,[6]=3,[7]=3,[8]=4,[9]=4,[10]=4,
[11]=4,[12]=4,[13]=5,[14]=5,[15]=5,[16]=5,[17]=6,[18]=6,
[19]=6,[20]=7,[21]=7,[22]=7,[23]=8,[24]=8,[25]=9,
[26]=9,[27]=10,[28]=11,[29]=12,[30]=15
}

local tabelaXP = {
[1]=50,[2]=80,[3]=110,[4]=140,[5]=170,[6]=200,[7]=375,[8]=420,[9]=465,[10]=510,
[11]=555,[12]=600,[13]=860,[14]=920,[15]=980,[16]=1040,[17]=1100,[18]=1450,
[19]=1525,[20]=1600,[21]=1675,[22]=1750,[23]=2190,[24]=2280,[25]=2370,
[26]=2460,[27]=2550,[28]=4400,[29]=4550,[30]=0
}

local function clampNivel(lvl)
  lvl = n(lvl)
  if lvl <= 0 then lvl = 1 end
  if lvl > 30 then lvl = 30 end
  return lvl
end

local function rolarNaMesa(nodeQualquer, rolagemStr, titulo)
  local mesa = rrpg.getMesaDe(nodeQualquer)
  if mesa == nil or mesa.chat == nil then return end
  local rolagem = rrpg.interpretarRolagem(rolagemStr)
  mesa.chat:rolarDados(rolagem, titulo)
end

local function somarCAItens(rootSheet)
  local total = 0
  if rootSheet == nil then return 0 end

  for _, node in ipairs(ndb.getChildNodes(rootSheet.armas)) do
    total = total + n(node.caBonus)
  end

  for _, node in ipairs(ndb.getChildNodes(rootSheet.armadurasLista)) do
    total = total + n(node.caBonus)
  end

  return total
end

function recalc(rootSheet)
  if rootSheet == nil then return end

  -- Iniciativa (auto = DES + bônus)
  rootSheet.INI = (tonumber(rootSheet.DES) or 0) + (tonumber(rootSheet.bonusDES) or 0) + (tonumber(rootSheet.bonusINI) or 0)

  -- iniciativa (DES + bônus)
  rootSheet.INI = (tonumber(rootSheet.DES) or 0) + (tonumber(rootSheet.bonusDES) or 0) + (tonumber(rootSheet.bonusINI) or 0)


  local lvl = clampNivel(rootSheet.nivel)

  local DES = n(rootSheet.DES) + n(rootSheet.bonusDES)
local CON = n(rootSheet.CON) + n(rootSheet.bonusCON)
-- iniciativa é sempre igual a DES (editável, mas auto atualiza)
  rootSheet.INI = DES + n(rootSheet.bonusINI)
	-- vida (PV Total)
	local vidaBase = n(tabelaVida[lvl])
	local pvCalc = vidaBase + (lvl * CON) + n(rootSheet.bonusPV) + n(rootSheet.pvExtra)
	-- mantém compatibilidade com versões antigas e também preenche os campos do layout atual
	rootSheet.PV = pvCalc
	rootSheet.pvTotal = pvCalc

	-- mana (Mana Total)
	local manaBase = n(tabelaMana[lvl])
	local manaCalc = manaBase + n(rootSheet.manaPedra) + n(rootSheet.manaExtra)
	rootSheet.Mana = manaCalc
	rootSheet.manaTotal = manaCalc

  -- CA itens
  rootSheet.caItens = somarCAItens(rootSheet)

  -- CA = (10 + DES) + (ARM + BÔNUS) + CA Extra
  -- No layout atual, ARM está no campo "caItens".
  local caCalc = (10 + DES) + (n(rootSheet.caItens) + n(rootSheet.bonusCA))
  local caTotal = caCalc + n(rootSheet.caExtra)
  rootSheet.CA = caTotal
  rootSheet.caTotal = caTotal

  -- progressão
  rootSheet.bonusProficiencia = n(tabelaProf[lvl])
  rootSheet.xpProxNivel = n(tabelaXP[lvl])

  rootSheet.prontoUpar = (n(rootSheet.xpProxNivel) > 0) and (n(rootSheet.xpAtual) >= n(rootSheet.xpProxNivel)) or false
  if rectProntoUpar ~= nil then
    rectProntoUpar.visible = (rootSheet.prontoUpar == true) or false
  end
end

function rolarAtributo(rootSheet, nomeCampo, titulo)
  if rootSheet == nil then return end

  local base = tonumber(rootSheet[nomeCampo]) or 0
  local bonus = tonumber(rootSheet["bonus" .. tostring(nomeCampo)]) or 0
  local total = base + bonus

  rolarNaMesa(rootSheet, "1d20+" .. tostring(total), titulo or ("Teste " .. tostring(nomeCampo)))
end

function rolarIniciativa(rootSheet)
  if rootSheet == nil then return end
  local des = tonumber(rootSheet.DES) or 0
  local bdes = tonumber(rootSheet.bonusDES) or 0
  local bini = tonumber(rootSheet.bonusINI) or 0
  local ini = des + bdes + bini
  rootSheet.INI = ini
  rolarNaMesa(rootSheet, "1d20+" .. tostring(ini), "Iniciativa")
end

function rolarDanoArma(armaNode)
  if armaNode == nil then return end
  local base = tostring(armaNode.dano or ""):gsub("%s+", "")
  local extra = tostring(armaNode.danoExtra or ""):gsub("%s+", "")

  if base == "" then return end

  local formula = base
  if extra ~= "" then
    -- sem parênteses (o parser do Firecast pode rejeitar)
    formula = formula .. "+" .. extra
  end

  -- interpretar rolagem com segurança
  local ok, rolagem = pcall(rrpg.interpretarRolagem, formula)
  if not ok or rolagem == nil then return end

  local mesa = rrpg.getMesaDe(armaNode)
  if mesa == nil or mesa.chat == nil then return end
  mesa.chat:rolarDados(rolagem, "Dano: " .. (armaNode.nome or "") .. " (" .. formula .. ")")
end


function rolarDanoMagia(magiaNode)
  if magiaNode == nil then return end
  local base = tostring(magiaNode.dano or ""):gsub("%s+", "")
  local extra = tostring(magiaNode.danoExtra or ""):gsub("%s+", "")

  if base == "" then return end

  local formula = base
  if extra ~= "" then
    formula = formula .. "+" .. extra
  end

  local ok, rolagem = pcall(rrpg.interpretarRolagem, formula)
  if not ok or rolagem == nil then return end

  local mesa = rrpg.getMesaDe(magiaNode)
  if mesa == nil or mesa.chat == nil then return end
  mesa.chat:rolarDados(rolagem, "Dano: " .. (magiaNode.nome or "") .. " (" .. formula .. ")")
end

function initPedraRPG(formObj, rootSheet)
  if formObj == nil or rootSheet == nil then return end

  recalc(rootSheet)

  if formObj.__pedraObs == nil and objs ~= nil and objs.addEventListener ~= nil then
    formObj.__pedraObs = objs.addEventListener(rootSheet, "onChange", function()
      recalc(rootSheet)
    end)
  end
end

-- Adição de nodes (recordList)
function adicionarPedra(rootSheet, rl)
  if rl == nil then rl = rclPedras end
  if rl == nil then return end
  local node = rl:append()
  if node ~= nil then
    node.nomePedra = node.nomePedra or "Pedra"
    node.nivelPedra = node.nivelPedra or 1
    node.descricaoPorNivel = node.descricaoPorNivel or ""
  end
  if rootSheet ~= nil then recalc(rootSheet) end
end

function adicionarTalento(rootSheet, rl)
  if rl == nil then rl = rclTalentos end
  if rl == nil then return end
  local node = rl:append()
  if node ~= nil then
    node.nome = node.nome or "Talento"
    node.dano = node.dano or ""
    node.danoExtra = node.danoExtra or ""
    node.descricao = node.descricao or ""
  end
end

function adicionarTruque(rootSheet, rl)
  if rl == nil then rl = rclTruques end
  if rl == nil then return end
  local node = rl:append()
  if node ~= nil then
    node.nome = node.nome or "Truque"
    node.dano = node.dano or ""
    node.danoExtra = node.danoExtra or ""
    node.descricao = node.descricao or ""
  end
end

function adicionarMagia1(rootSheet, rl)
  if rl == nil then rl = rclMagias1 end
  if rl == nil then return end
  local node = rl:append()
  if node ~= nil then
    node.nome = node.nome or "Magia Nível 1"
    node.dano = node.dano or ""
    node.danoExtra = node.danoExtra or ""
    node.descricao = node.descricao or ""
  end
end

function adicionarMagia2(rootSheet, rl)
  if rl == nil then rl = rclMagias2 end
  if rl == nil then return end
  local node = rl:append()
  if node ~= nil then
    node.nome = node.nome or "Magia Nível 2"
    node.dano = node.dano or ""
    node.danoExtra = node.danoExtra or ""
    node.descricao = node.descricao or ""
  end
end

function adicionarMagia3(rootSheet, rl)
  if rl == nil then rl = rclMagias3 end
  if rl == nil then return end
  local node = rl:append()
  if node ~= nil then
    node.nome = node.nome or "Magia Nível 3"
    node.dano = node.dano or ""
    node.danoExtra = node.danoExtra or ""
    node.descricao = node.descricao or ""
  end
end

function adicionarMagia4(rootSheet, rl)
  if rl == nil then rl = rclMagias4 end
  if rl == nil then return end
  local node = rl:append()
  if node ~= nil then
    node.nome = node.nome or "Magia Nível 4"
    node.dano = node.dano or ""
    node.danoExtra = node.danoExtra or ""
    node.descricao = node.descricao or ""
  end
end

function adicionarMagia5(rootSheet, rl)
  if rl == nil then rl = rclMagias5 end
  if rl == nil then return end
  local node = rl:append()
  if node ~= nil then
    node.nome = node.nome or "Magia Nível 5"
    node.dano = node.dano or ""
    node.danoExtra = node.danoExtra or ""
    node.descricao = node.descricao or ""
  end
end

function adicionarMagia6(rootSheet, rl)
  if rl == nil then rl = rclMagias6 end
  if rl == nil then return end
  local node = rl:append()
  if node ~= nil then
    node.nome = node.nome or "Magia Nível 6"
    node.dano = node.dano or ""
    node.danoExtra = node.danoExtra or ""
    node.descricao = node.descricao or ""
  end
end

function adicionarMagia7(rootSheet, rl)
  if rl == nil then rl = rclMagias7 end
  if rl == nil then return end
  local node = rl:append()
  if node ~= nil then
    node.nome = node.nome or "Magia Nível 7"
    node.dano = node.dano or ""
    node.danoExtra = node.danoExtra or ""
    node.descricao = node.descricao or ""
  end
end

function adicionarMagia8(rootSheet, rl)
  if rl == nil then rl = rclMagias8 end
  if rl == nil then return end
  local node = rl:append()
  if node ~= nil then
    node.nome = node.nome or "Magia Nível 8"
    node.dano = node.dano or ""
    node.danoExtra = node.danoExtra or ""
    node.descricao = node.descricao or ""
  end
end

function adicionarMagia9(rootSheet, rl)
  if rl == nil then rl = rclMagias9 end
  if rl == nil then return end
  local node = rl:append()
  if node ~= nil then
    node.nome = node.nome or "Magia Nível 9"
    node.dano = node.dano or ""
    node.danoExtra = node.danoExtra or ""
    node.descricao = node.descricao or ""
  end
end

function adicionarMagia10(rootSheet, rl)
  if rl == nil then rl = rclMagias10 end
  if rl == nil then return end
  local node = rl:append()
  if node ~= nil then
    node.nome = node.nome or "Magia Nível 10"
    node.dano = node.dano or ""
    node.danoExtra = node.danoExtra or ""
    node.descricao = node.descricao or ""
  end
end

function adicionarMagia11(rootSheet, rl)
  if rl == nil then rl = rclMagias11 end
  if rl == nil then return end
  local node = rl:append()
  if node ~= nil then
    node.nome = node.nome or "Magia Nível 11"
    node.dano = node.dano or ""
    node.danoExtra = node.danoExtra or ""
    node.descricao = node.descricao or ""
  end
end


function adicionarArma(rootSheet, rl)
  if rl == nil then rl = rclArmas end
  if rl == nil then return end
  local node = rl:append()
  if node ~= nil then
    node.nome = node.nome or "Arma"
    node.dano = node.dano or "1d6"
    node.danoExtra = node.danoExtra or ""
    node.caBonus = node.caBonus or 0
    node.descricao = node.descricao or ""
  end
  if rootSheet ~= nil then recalc(rootSheet) end
end

function adicionarArmadura(rootSheet, rl)
  if rl == nil then rl = rclArmaduras end
  if rl == nil then return end
  local node = rl:append()
  if node ~= nil then
    node.nome = node.nome or "Armadura"
    node.caBonus = node.caBonus or 0
    node.descricao = node.descricao or ""
  end
  if rootSheet ~= nil then recalc(rootSheet) end
end

function adicionarConsumivel(rootSheet, rl)
  if rl == nil then rl = rclConsumiveis end
  if rl == nil then return end
  local node = rl:append()
  if node ~= nil then
    node.nome = node.nome or "Consumível"
    node.usosAtual = node.usosAtual or 1
    node.usosMax = node.usosMax or 1
    node.descricao = node.descricao or ""
  end
  if rootSheet ~= nil then recalc(rootSheet) end
end


function usarConsumivel(consNode)
  if consNode == nil then return end
  local root = getRootSheet(consNode)

  local atual = n(consNode.usosAtual)
  local maxu = n(consNode.usosMax)
  if maxu <= 0 then maxu = atual end

  if atual <= 0 then
    local mesa = rrpg.getMesaDe(consNode)
    if mesa ~= nil and mesa.chat ~= nil then
      mesa.chat:enviarMensagem("O consumível '" .. (consNode.nome or "") .. "' não tem mais usos.")
    end
    return
  end

  consNode.usosAtual = atual - 1

  local mesa = rrpg.getMesaDe(consNode)
  if mesa ~= nil and mesa.chat ~= nil then
    mesa.chat:enviarMensagem("Usou: " .. (consNode.nome or "") .. " (" .. tostring(consNode.usosAtual) .. "/" .. tostring(maxu) .. ")")
  end

  if root ~= nil then recalc(root) end
end

function rolarDanoUtilizavel(node)
  if node == nil then return end
  local base = tostring(node.dano or ""):gsub("%s+", "")
  local extra = tostring(node.danoExtra or ""):gsub("%s+", "")

  if base == "" then return end

  local formula = base
  if extra ~= "" then
    formula = formula .. "+" .. extra
  end

  local ok, rolagem = pcall(rrpg.interpretarRolagem, formula)
  if not ok or rolagem == nil then return end

  local mesa = rrpg.getMesaDe(node)
  if mesa == nil or mesa.chat == nil then return end
  mesa.chat:rolarDados(rolagem, "Dano: " .. (node.nome or "") .. " (" .. formula .. ")")
end

function adicionarUtilizavelDano(rootSheet, rl)
  if rl == nil then rl = rclUtilizaveisDano end
  if rl == nil then return end
  local node = rl:append()
  if node ~= nil then
    node.nome = node.nome or "Item Utilizável"
    node.dano = node.dano or ""
    node.danoExtra = node.danoExtra or ""
    node.usosAtual = node.usosAtual or 1
    node.usosMax = node.usosMax or 1
    node.descricao = node.descricao or ""
  end
  if rootSheet ~= nil then recalc(rootSheet) end
end

function adicionarItemMochila(rootSheet, rl)
  if rl == nil then rl = rclMochila end
  if rl == nil then return end
  local node = rl:append()
  if node ~= nil then
    node.nome = node.nome or "Item"
    node.qtd = node.qtd or 1
    node.descricao = node.descricao or ""
  end
  if rootSheet ~= nil then recalc(rootSheet) end
end


function adicionarHabCriavel(rootSheet, rl)
  -- Tenta resolver a recordList mesmo quando o botão não passa a referência corretamente
  local r = rl

  if r == nil then
    -- Alguns layouts deixam o recordList como variável global
    r = rclHabsCriavel
  end

  if r == nil and rootSheet ~= nil then
    -- Em muitos templates o form expõe os controles como propriedades
    r = rootSheet.rclHabsCriavel
  end

  if r == nil and rootSheet ~= nil and type(rootSheet.findControlByName) == "function" then
    r = rootSheet:findControlByName("rclHabsCriavel")
  end

  if r == nil then return end

  local node = r:append()
  if node ~= nil then
    node.nome = node.nome or "Habilidade"
    node.descricao = node.descricao or ""
  end
end

-- export globals for LFM events
_G.recalc = recalc
_G.adicionarHabCriavel = adicionarHabCriavel
_G.rolarAtributo = rolarAtributo
_G.rolarIniciativa = rolarIniciativa
_G.rolarDanoArma = rolarDanoArma
_G.initPedraRPG = initPedraRPG
_G.adicionarPedra = adicionarPedra
_G.adicionarArma = adicionarArma
_G.adicionarArmadura = adicionarArmadura
_G.adicionarConsumivel = adicionarConsumivel

_G.usarConsumivel = usarConsumivel
_G.rolarDanoUtilizavel = rolarDanoUtilizavel
_G.adicionarUtilizavelDano = adicionarUtilizavelDano
_G.adicionarItemMochila = adicionarItemMochila

-- Magias (talentos, truques e níveis 1-11)
_G.rolarDanoMagia = rolarDanoMagia
_G.adicionarTalento = adicionarTalento
_G.adicionarTruque = adicionarTruque
_G.adicionarMagia1 = adicionarMagia1
_G.adicionarMagia2 = adicionarMagia2
_G.adicionarMagia3 = adicionarMagia3
_G.adicionarMagia4 = adicionarMagia4
_G.adicionarMagia5 = adicionarMagia5
_G.adicionarMagia6 = adicionarMagia6
_G.adicionarMagia7 = adicionarMagia7
_G.adicionarMagia8 = adicionarMagia8
_G.adicionarMagia9 = adicionarMagia9
_G.adicionarMagia10 = adicionarMagia10
_G.adicionarMagia11 = adicionarMagia11