require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmPedraRPG()
    local obj = GUI.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", obj.setNodeObject);

    function obj:setNodeObject(nodeObject)
        sheet = nodeObject;
        self.sheet = nodeObject;
        self:_oldSetNodeObjectFunction(nodeObject);
    end;

    function obj:setNodeDatabase(nodeObject)
        self:setNodeObject(nodeObject);
    end;

    _gui_assignInitialParentForForm(obj.handle);
    obj:beginUpdate();
    obj:setDataType("br.com.rrpg.PedraRPG_S3");
    obj:setFormType("sheetTemplate");
    obj:setTitle("Pedra RPG");
    obj:setDescription("Ficha Pedra RPG");
    obj:setName("frmPedraRPG");


    



      require("sheetCode.lua");

      local __oldSetNodeObject = self.setNodeObject;
      function self:setNodeObject(nodeObject)
        __oldSetNodeObject(self, nodeObject);
        if sheet ~= nil then
        _G.rclPedras = self.rclPedras;
        _G.rclArmas = self.rclArmas;
        _G.rclArmaduras = self.rclArmaduras;
        _G.rclConsumiveis = self.rclConsumiveis;
        _G.rclTalentos = self.rclTalentos;
        _G.rclTruques = self.rclTruques;
        _G.rclMagias1 = self.rclMagias1;
        _G.rclMagias2 = self.rclMagias2;
        _G.rclMagias3 = self.rclMagias3;
        _G.rclMagias4 = self.rclMagias4;
        _G.rclMagias5 = self.rclMagias5;
        _G.rectProntoUpar = self.rectProntoUpar;
          initPedraRPG(self, sheet);
        end
      end

    



  


    obj.tabControl1 = GUI.fromHandle(_obj_newObject("tabControl"));
    obj.tabControl1:setParent(obj);
    obj.tabControl1:setAlign("client");
    obj.tabControl1:setName("tabControl1");

    obj.tab1 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab1:setParent(obj.tabControl1);
    obj.tab1:setTitle("Geral");
    obj.tab1:setName("tab1");

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj.tab1);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.scrollBox1);
    obj.dataLink1:setField("nivel");
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.scrollBox1);
    obj.dataLink2:setField("DES");
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.scrollBox1);
    obj.dataLink3:setField("CON");
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.scrollBox1);
    obj.dataLink4:setField("bonusPV");
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.scrollBox1);
    obj.dataLink5:setField("pvExtra");
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.scrollBox1);
    obj.dataLink6:setField("manaPedra");
    obj.dataLink6:setName("dataLink6");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.scrollBox1);
    obj.dataLink7:setField("manaExtra");
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj.scrollBox1);
    obj.dataLink8:setField("armadura");
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj.scrollBox1);
    obj.dataLink9:setField("bonusCA");
    obj.dataLink9:setName("dataLink9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj.scrollBox1);
    obj.dataLink10:setField("caExtra");
    obj.dataLink10:setName("dataLink10");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj.scrollBox1);
    obj.dataLink11:setField("xpAtual");
    obj.dataLink11:setName("dataLink11");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.scrollBox1);
    obj.layout1:setAlign("top");
    obj.layout1:setHeight(10);
    obj.layout1:setName("layout1");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.scrollBox1);
    obj.label1:setText("Pedra RPG");
    obj.label1:setAlign("top");
    obj.label1:setFontSize(20);
    obj.label1:setName("label1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.scrollBox1);
    obj.layout2:setAlign("top");
    obj.layout2:setHeight(40);
    obj.layout2:setName("layout2");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout2);
    obj.label2:setText("Nome");
    obj.label2:setAlign("left");
    obj.label2:setWidth(60);
    obj.label2:setName("label2");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout2);
    obj.edit1:setField("nome");
    obj.edit1:setAlign("left");
    obj.edit1:setWidth(260);
    obj.edit1:setName("edit1");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout2);
    obj.label3:setText("Nível");
    obj.label3:setAlign("left");
    obj.label3:setWidth(60);
    obj.label3:setName("label3");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout2);
    obj.edit2:setField("nivel");
    obj.edit2:setAlign("left");
    obj.edit2:setWidth(60);
    obj.edit2:setType("number");
    obj.edit2:setName("edit2");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout2);
    obj.label4:setText("Nível das Pedras");
    obj.label4:setAlign("left");
    obj.label4:setWidth(110);
    obj.label4:setName("label4");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout2);
    obj.edit3:setField("nivelPedras");
    obj.edit3:setAlign("left");
    obj.edit3:setWidth(60);
    obj.edit3:setType("number");
    obj.edit3:setName("edit3");

    obj.rectProntoUpar = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectProntoUpar:setParent(obj.scrollBox1);
    obj.rectProntoUpar:setName("rectProntoUpar");
    obj.rectProntoUpar:setAlign("top");
    obj.rectProntoUpar:setHeight(34);
    obj.rectProntoUpar:setStrokeSize(0);
    obj.rectProntoUpar:setVisible(false);

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.rectProntoUpar);
    obj.layout3:setAlign("client");
    obj.layout3:setName("layout3");

    obj.lblProntoUpar = GUI.fromHandle(_obj_newObject("label"));
    obj.lblProntoUpar:setParent(obj.rectProntoUpar);
    obj.lblProntoUpar:setName("lblProntoUpar");
    obj.lblProntoUpar:setText("PRONTO PARA UPAR");
    obj.lblProntoUpar:setAlign("client");
    obj.lblProntoUpar:setHorzTextAlign("center");
    obj.lblProntoUpar:setVertTextAlign("center");
    obj.lblProntoUpar:setFontSize(16);

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.scrollBox1);
    obj.layout4:setAlign("top");
    obj.layout4:setHeight(10);
    obj.layout4:setName("layout4");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.scrollBox1);
    obj.layout5:setAlign("top");
    obj.layout5:setHeight(10);
    obj.layout5:setName("layout5");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.scrollBox1);
    obj.label5:setText("Atributos (o valor já é o modificador)");
    obj.label5:setAlign("top");
    obj.label5:setFontSize(16);
    obj.label5:setName("label5");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.scrollBox1);
    obj.layout6:setAlign("top");
    obj.layout6:setHeight(28);
    obj.layout6:setName("layout6");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout6);
    obj.label6:setText("");
    obj.label6:setAlign("left");
    obj.label6:setWidth(60);
    obj.label6:setName("label6");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout6);
    obj.label7:setText("MOD");
    obj.label7:setAlign("left");
    obj.label7:setWidth(70);
    obj.label7:setHorzTextAlign("center");
    obj.label7:setName("label7");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout6);
    obj.label8:setText("Bônus");
    obj.label8:setAlign("left");
    obj.label8:setWidth(70);
    obj.label8:setHorzTextAlign("center");
    obj.label8:setName("label8");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout6);
    obj.label9:setText("Teste");
    obj.label9:setAlign("left");
    obj.label9:setWidth(90);
    obj.label9:setHorzTextAlign("center");
    obj.label9:setName("label9");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.scrollBox1);
    obj.layout7:setAlign("top");
    obj.layout7:setHeight(34);
    obj.layout7:setName("layout7");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout7);
    obj.label10:setText("FOR");
    obj.label10:setAlign("left");
    obj.label10:setWidth(60);
    obj.label10:setName("label10");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout7);
    obj.edit4:setField("FOR");
    obj.edit4:setAlign("left");
    obj.edit4:setWidth(70);
    obj.edit4:setType("number");
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setName("edit4");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout7);
    obj.edit5:setField("bonusFOR");
    obj.edit5:setAlign("left");
    obj.edit5:setWidth(70);
    obj.edit5:setType("number");
    obj.edit5:setHorzTextAlign("center");
    obj.edit5:setName("edit5");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj.layout7);
    obj.dataLink12:setField("bonusFOR");
    obj.dataLink12:setName("dataLink12");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout7);
    obj.button1:setText("Rolar");
    obj.button1:setAlign("left");
    obj.button1:setWidth(90);
    obj.button1:setName("button1");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.scrollBox1);
    obj.layout8:setAlign("top");
    obj.layout8:setHeight(34);
    obj.layout8:setName("layout8");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout8);
    obj.label11:setText("DES");
    obj.label11:setAlign("left");
    obj.label11:setWidth(60);
    obj.label11:setName("label11");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout8);
    obj.edit6:setField("DES");
    obj.edit6:setAlign("left");
    obj.edit6:setWidth(70);
    obj.edit6:setType("number");
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setName("edit6");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout8);
    obj.edit7:setField("bonusDES");
    obj.edit7:setAlign("left");
    obj.edit7:setWidth(70);
    obj.edit7:setType("number");
    obj.edit7:setHorzTextAlign("center");
    obj.edit7:setName("edit7");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj.layout8);
    obj.dataLink13:setField("bonusDES");
    obj.dataLink13:setName("dataLink13");

    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.layout8);
    obj.button2:setText("Rolar");
    obj.button2:setAlign("left");
    obj.button2:setWidth(90);
    obj.button2:setName("button2");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.scrollBox1);
    obj.layout9:setAlign("top");
    obj.layout9:setHeight(34);
    obj.layout9:setName("layout9");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout9);
    obj.label12:setText("CON");
    obj.label12:setAlign("left");
    obj.label12:setWidth(60);
    obj.label12:setName("label12");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout9);
    obj.edit8:setField("CON");
    obj.edit8:setAlign("left");
    obj.edit8:setWidth(70);
    obj.edit8:setType("number");
    obj.edit8:setHorzTextAlign("center");
    obj.edit8:setName("edit8");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout9);
    obj.edit9:setField("bonusCON");
    obj.edit9:setAlign("left");
    obj.edit9:setWidth(70);
    obj.edit9:setType("number");
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setName("edit9");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj.layout9);
    obj.dataLink14:setField("bonusCON");
    obj.dataLink14:setName("dataLink14");

    obj.button3 = GUI.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.layout9);
    obj.button3:setText("Rolar");
    obj.button3:setAlign("left");
    obj.button3:setWidth(90);
    obj.button3:setName("button3");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.scrollBox1);
    obj.layout10:setAlign("top");
    obj.layout10:setHeight(34);
    obj.layout10:setName("layout10");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout10);
    obj.label13:setText("INT");
    obj.label13:setAlign("left");
    obj.label13:setWidth(60);
    obj.label13:setName("label13");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout10);
    obj.edit10:setField("INT");
    obj.edit10:setAlign("left");
    obj.edit10:setWidth(70);
    obj.edit10:setType("number");
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setName("edit10");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout10);
    obj.edit11:setField("bonusINT");
    obj.edit11:setAlign("left");
    obj.edit11:setWidth(70);
    obj.edit11:setType("number");
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setName("edit11");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj.layout10);
    obj.dataLink15:setField("bonusINT");
    obj.dataLink15:setName("dataLink15");

    obj.button4 = GUI.fromHandle(_obj_newObject("button"));
    obj.button4:setParent(obj.layout10);
    obj.button4:setText("Rolar");
    obj.button4:setAlign("left");
    obj.button4:setWidth(90);
    obj.button4:setName("button4");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.scrollBox1);
    obj.layout11:setAlign("top");
    obj.layout11:setHeight(34);
    obj.layout11:setName("layout11");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout11);
    obj.label14:setText("SAB");
    obj.label14:setAlign("left");
    obj.label14:setWidth(60);
    obj.label14:setName("label14");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout11);
    obj.edit12:setField("SAB");
    obj.edit12:setAlign("left");
    obj.edit12:setWidth(70);
    obj.edit12:setType("number");
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setName("edit12");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout11);
    obj.edit13:setField("bonusSAB");
    obj.edit13:setAlign("left");
    obj.edit13:setWidth(70);
    obj.edit13:setType("number");
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setName("edit13");

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj.layout11);
    obj.dataLink16:setField("bonusSAB");
    obj.dataLink16:setName("dataLink16");

    obj.button5 = GUI.fromHandle(_obj_newObject("button"));
    obj.button5:setParent(obj.layout11);
    obj.button5:setText("Rolar");
    obj.button5:setAlign("left");
    obj.button5:setWidth(90);
    obj.button5:setName("button5");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.scrollBox1);
    obj.layout12:setAlign("top");
    obj.layout12:setHeight(34);
    obj.layout12:setName("layout12");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout12);
    obj.label15:setText("CAR");
    obj.label15:setAlign("left");
    obj.label15:setWidth(60);
    obj.label15:setName("label15");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout12);
    obj.edit14:setField("CAR");
    obj.edit14:setAlign("left");
    obj.edit14:setWidth(70);
    obj.edit14:setType("number");
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setName("edit14");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout12);
    obj.edit15:setField("bonusCAR");
    obj.edit15:setAlign("left");
    obj.edit15:setWidth(70);
    obj.edit15:setType("number");
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setName("edit15");

    obj.dataLink17 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj.layout12);
    obj.dataLink17:setField("bonusCAR");
    obj.dataLink17:setName("dataLink17");

    obj.button6 = GUI.fromHandle(_obj_newObject("button"));
    obj.button6:setParent(obj.layout12);
    obj.button6:setText("Rolar");
    obj.button6:setAlign("left");
    obj.button6:setWidth(90);
    obj.button6:setName("button6");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.scrollBox1);
    obj.layout13:setAlign("top");
    obj.layout13:setHeight(10);
    obj.layout13:setName("layout13");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.scrollBox1);
    obj.label16:setText("Iniciativa");
    obj.label16:setAlign("top");
    obj.label16:setFontSize(16);
    obj.label16:setName("label16");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.scrollBox1);
    obj.layout14:setAlign("top");
    obj.layout14:setHeight(34);
    obj.layout14:setName("layout14");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout14);
    obj.label17:setText("INI (auto = DES)");
    obj.label17:setAlign("left");
    obj.label17:setWidth(120);
    obj.label17:setName("label17");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout14);
    obj.edit16:setField("INI");
    obj.edit16:setAlign("left");
    obj.edit16:setWidth(70);
    obj.edit16:setType("number");
    obj.edit16:setReadOnly(true);
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setName("edit16");

    obj.dataLink18 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj.layout14);
    obj.dataLink18:setField("bonusINI");
    obj.dataLink18:setName("dataLink18");

    obj.button7 = GUI.fromHandle(_obj_newObject("button"));
    obj.button7:setParent(obj.layout14);
    obj.button7:setText("Rolar INI");
    obj.button7:setAlign("left");
    obj.button7:setWidth(90);
    obj.button7:setName("button7");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.scrollBox1);
    obj.layout15:setAlign("top");
    obj.layout15:setHeight(10);
    obj.layout15:setName("layout15");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.scrollBox1);
    obj.label18:setText("Recursos e Defesas (auto + ajuste)");
    obj.label18:setAlign("top");
    obj.label18:setFontSize(16);
    obj.label18:setName("label18");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.scrollBox1);
    obj.layout16:setAlign("top");
    obj.layout16:setHeight(40);
    obj.layout16:setName("layout16");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout16);
    obj.label19:setText("Bônus PV");
    obj.label19:setAlign("left");
    obj.label19:setWidth(70);
    obj.label19:setName("label19");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout16);
    obj.edit17:setField("bonusPV");
    obj.edit17:setAlign("left");
    obj.edit17:setWidth(70);
    obj.edit17:setType("number");
    obj.edit17:setName("edit17");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layout16);
    obj.label20:setText("PV Extra");
    obj.label20:setAlign("left");
    obj.label20:setWidth(70);
    obj.label20:setName("label20");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout16);
    obj.edit18:setField("pvExtra");
    obj.edit18:setAlign("left");
    obj.edit18:setWidth(70);
    obj.edit18:setType("number");
    obj.edit18:setName("edit18");

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.layout16);
    obj.label21:setText("PV Total");
    obj.label21:setAlign("left");
    obj.label21:setWidth(70);
    obj.label21:setName("label21");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.layout16);
    obj.edit19:setField("PV");
    obj.edit19:setAlign("left");
    obj.edit19:setWidth(80);
    obj.edit19:setType("number");
    obj.edit19:setReadOnly(true);
    obj.edit19:setName("edit19");

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.scrollBox1);
    obj.layout17:setAlign("top");
    obj.layout17:setHeight(40);
    obj.layout17:setName("layout17");

    obj.label22 = GUI.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.layout17);
    obj.label22:setText("Mana Pedra");
    obj.label22:setAlign("left");
    obj.label22:setWidth(80);
    obj.label22:setName("label22");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.layout17);
    obj.edit20:setField("manaPedra");
    obj.edit20:setAlign("left");
    obj.edit20:setWidth(70);
    obj.edit20:setType("number");
    obj.edit20:setName("edit20");

    obj.label23 = GUI.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.layout17);
    obj.label23:setText("Mana Extra");
    obj.label23:setAlign("left");
    obj.label23:setWidth(80);
    obj.label23:setName("label23");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.layout17);
    obj.edit21:setField("manaExtra");
    obj.edit21:setAlign("left");
    obj.edit21:setWidth(70);
    obj.edit21:setType("number");
    obj.edit21:setName("edit21");

    obj.label24 = GUI.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.layout17);
    obj.label24:setText("Mana Total");
    obj.label24:setAlign("left");
    obj.label24:setWidth(80);
    obj.label24:setName("label24");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.layout17);
    obj.edit22:setField("Mana");
    obj.edit22:setAlign("left");
    obj.edit22:setWidth(80);
    obj.edit22:setType("number");
    obj.edit22:setReadOnly(true);
    obj.edit22:setName("edit22");

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.scrollBox1);
    obj.layout18:setAlign("top");
    obj.layout18:setHeight(40);
    obj.layout18:setName("layout18");

    obj.label25 = GUI.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.layout18);
    obj.label25:setText("Bônus CA");
    obj.label25:setAlign("left");
    obj.label25:setWidth(80);
    obj.label25:setName("label25");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.layout18);
    obj.edit23:setField("bonusCA");
    obj.edit23:setAlign("left");
    obj.edit23:setWidth(70);
    obj.edit23:setType("number");
    obj.edit23:setName("edit23");

    obj.label26 = GUI.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.layout18);
    obj.label26:setText("CA Extra");
    obj.label26:setAlign("left");
    obj.label26:setWidth(70);
    obj.label26:setName("label26");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.layout18);
    obj.edit24:setField("caExtra");
    obj.edit24:setAlign("left");
    obj.edit24:setWidth(70);
    obj.edit24:setType("number");
    obj.edit24:setName("edit24");

    obj.label27 = GUI.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.layout18);
    obj.label27:setText("CA Itens");
    obj.label27:setAlign("left");
    obj.label27:setWidth(70);
    obj.label27:setName("label27");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.layout18);
    obj.edit25:setField("caItens");
    obj.edit25:setAlign("left");
    obj.edit25:setWidth(70);
    obj.edit25:setType("number");
    obj.edit25:setReadOnly(true);
    obj.edit25:setName("edit25");

    obj.label28 = GUI.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.layout18);
    obj.label28:setText("CA Total");
    obj.label28:setAlign("left");
    obj.label28:setWidth(70);
    obj.label28:setName("label28");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.layout18);
    obj.edit26:setField("CA");
    obj.edit26:setAlign("left");
    obj.edit26:setWidth(70);
    obj.edit26:setType("number");
    obj.edit26:setReadOnly(true);
    obj.edit26:setName("edit26");

    obj.layout19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.scrollBox1);
    obj.layout19:setAlign("top");
    obj.layout19:setHeight(10);
    obj.layout19:setName("layout19");

    obj.label29 = GUI.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.scrollBox1);
    obj.label29:setText("Progressão (auto)");
    obj.label29:setAlign("top");
    obj.label29:setFontSize(16);
    obj.label29:setName("label29");

    obj.layout20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.scrollBox1);
    obj.layout20:setAlign("top");
    obj.layout20:setHeight(40);
    obj.layout20:setName("layout20");

    obj.label30 = GUI.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.layout20);
    obj.label30:setText("XP Atual");
    obj.label30:setAlign("left");
    obj.label30:setWidth(70);
    obj.label30:setName("label30");

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.layout20);
    obj.edit27:setField("xpAtual");
    obj.edit27:setAlign("left");
    obj.edit27:setWidth(90);
    obj.edit27:setType("number");
    obj.edit27:setName("edit27");

    obj.label31 = GUI.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.layout20);
    obj.label31:setText("XP p/ Upar");
    obj.label31:setAlign("left");
    obj.label31:setWidth(80);
    obj.label31:setName("label31");

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.layout20);
    obj.edit28:setField("xpProxNivel");
    obj.edit28:setAlign("left");
    obj.edit28:setWidth(90);
    obj.edit28:setType("number");
    obj.edit28:setReadOnly(true);
    obj.edit28:setName("edit28");

    obj.label32 = GUI.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.layout20);
    obj.label32:setText("Proficiência");
    obj.label32:setAlign("left");
    obj.label32:setWidth(90);
    obj.label32:setName("label32");

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.layout20);
    obj.edit29:setField("bonusProficiencia");
    obj.edit29:setAlign("left");
    obj.edit29:setWidth(70);
    obj.edit29:setType("number");
    obj.edit29:setReadOnly(true);
    obj.edit29:setName("edit29");

    obj.layout21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.scrollBox1);
    obj.layout21:setAlign("top");
    obj.layout21:setHeight(16);
    obj.layout21:setName("layout21");

    obj.tab2 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab2:setParent(obj.tabControl1);
    obj.tab2:setTitle("Magias");
    obj.tab2:setName("tab2");

    obj.scrollBox2 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox2:setParent(obj.tab2);
    obj.scrollBox2:setAlign("client");
    obj.scrollBox2:setName("scrollBox2");

    obj.layout22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.scrollBox2);
    obj.layout22:setAlign("top");
    obj.layout22:setHeight(10);
    obj.layout22:setName("layout22");

    obj.label33 = GUI.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.scrollBox2);
    obj.label33:setText("Talentos");
    obj.label33:setAlign("top");
    obj.label33:setName("label33");

    obj.btnAddTalento = GUI.fromHandle(_obj_newObject("button"));
    obj.btnAddTalento:setParent(obj.scrollBox2);
    obj.btnAddTalento:setName("btnAddTalento");
    obj.btnAddTalento:setText("+ Adicionar Talento");
    obj.btnAddTalento:setAlign("top");
    obj.btnAddTalento:setHeight(32);

    obj.rclTalentos = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclTalentos:setParent(obj.scrollBox2);
    obj.rclTalentos:setName("rclTalentos");
    obj.rclTalentos:setField("talentos");
    obj.rclTalentos:setAlign("top");
    obj.rclTalentos:setHeight(260);
    obj.rclTalentos:setItemHeight(260);
    obj.rclTalentos:setTemplateForm("frmItemMagia");

    obj.layout23 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.scrollBox2);
    obj.layout23:setAlign("top");
    obj.layout23:setHeight(12);
    obj.layout23:setName("layout23");

    obj.label34 = GUI.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.scrollBox2);
    obj.label34:setText("Truques");
    obj.label34:setAlign("top");
    obj.label34:setName("label34");

    obj.btnAddTruque = GUI.fromHandle(_obj_newObject("button"));
    obj.btnAddTruque:setParent(obj.scrollBox2);
    obj.btnAddTruque:setName("btnAddTruque");
    obj.btnAddTruque:setText("+ Adicionar Truque");
    obj.btnAddTruque:setAlign("top");
    obj.btnAddTruque:setHeight(32);

    obj.rclTruques = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclTruques:setParent(obj.scrollBox2);
    obj.rclTruques:setName("rclTruques");
    obj.rclTruques:setField("truquesLista");
    obj.rclTruques:setAlign("top");
    obj.rclTruques:setHeight(260);
    obj.rclTruques:setItemHeight(260);
    obj.rclTruques:setTemplateForm("frmItemMagia");

    obj.layout24 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.scrollBox2);
    obj.layout24:setAlign("top");
    obj.layout24:setHeight(12);
    obj.layout24:setName("layout24");

    obj.label35 = GUI.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.scrollBox2);
    obj.label35:setText("Magia 1");
    obj.label35:setAlign("top");
    obj.label35:setName("label35");

    obj.btnAddMagia1 = GUI.fromHandle(_obj_newObject("button"));
    obj.btnAddMagia1:setParent(obj.scrollBox2);
    obj.btnAddMagia1:setName("btnAddMagia1");
    obj.btnAddMagia1:setText("+ Adicionar Magia 1");
    obj.btnAddMagia1:setAlign("top");
    obj.btnAddMagia1:setHeight(32);

    obj.rclMagias1 = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclMagias1:setParent(obj.scrollBox2);
    obj.rclMagias1:setName("rclMagias1");
    obj.rclMagias1:setField("magias1Lista");
    obj.rclMagias1:setAlign("top");
    obj.rclMagias1:setHeight(260);
    obj.rclMagias1:setItemHeight(260);
    obj.rclMagias1:setTemplateForm("frmItemMagia");

    obj.layout25 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.scrollBox2);
    obj.layout25:setAlign("top");
    obj.layout25:setHeight(12);
    obj.layout25:setName("layout25");

    obj.label36 = GUI.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj.scrollBox2);
    obj.label36:setText("Magia 2");
    obj.label36:setAlign("top");
    obj.label36:setName("label36");

    obj.btnAddMagia2 = GUI.fromHandle(_obj_newObject("button"));
    obj.btnAddMagia2:setParent(obj.scrollBox2);
    obj.btnAddMagia2:setName("btnAddMagia2");
    obj.btnAddMagia2:setText("+ Adicionar Magia 2");
    obj.btnAddMagia2:setAlign("top");
    obj.btnAddMagia2:setHeight(32);

    obj.rclMagias2 = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclMagias2:setParent(obj.scrollBox2);
    obj.rclMagias2:setName("rclMagias2");
    obj.rclMagias2:setField("magias2Lista");
    obj.rclMagias2:setAlign("top");
    obj.rclMagias2:setHeight(260);
    obj.rclMagias2:setItemHeight(260);
    obj.rclMagias2:setTemplateForm("frmItemMagia");

    obj.layout26 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.scrollBox2);
    obj.layout26:setAlign("top");
    obj.layout26:setHeight(12);
    obj.layout26:setName("layout26");

    obj.label37 = GUI.fromHandle(_obj_newObject("label"));
    obj.label37:setParent(obj.scrollBox2);
    obj.label37:setText("Magia 3");
    obj.label37:setAlign("top");
    obj.label37:setName("label37");

    obj.btnAddMagia3 = GUI.fromHandle(_obj_newObject("button"));
    obj.btnAddMagia3:setParent(obj.scrollBox2);
    obj.btnAddMagia3:setName("btnAddMagia3");
    obj.btnAddMagia3:setText("+ Adicionar Magia 3");
    obj.btnAddMagia3:setAlign("top");
    obj.btnAddMagia3:setHeight(32);

    obj.rclMagias3 = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclMagias3:setParent(obj.scrollBox2);
    obj.rclMagias3:setName("rclMagias3");
    obj.rclMagias3:setField("magias3Lista");
    obj.rclMagias3:setAlign("top");
    obj.rclMagias3:setHeight(260);
    obj.rclMagias3:setItemHeight(260);
    obj.rclMagias3:setTemplateForm("frmItemMagia");

    obj.layout27 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.scrollBox2);
    obj.layout27:setAlign("top");
    obj.layout27:setHeight(12);
    obj.layout27:setName("layout27");

    obj.label38 = GUI.fromHandle(_obj_newObject("label"));
    obj.label38:setParent(obj.scrollBox2);
    obj.label38:setText("Magia 4");
    obj.label38:setAlign("top");
    obj.label38:setName("label38");

    obj.btnAddMagia4 = GUI.fromHandle(_obj_newObject("button"));
    obj.btnAddMagia4:setParent(obj.scrollBox2);
    obj.btnAddMagia4:setName("btnAddMagia4");
    obj.btnAddMagia4:setText("+ Adicionar Magia 4");
    obj.btnAddMagia4:setAlign("top");
    obj.btnAddMagia4:setHeight(32);

    obj.rclMagias4 = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclMagias4:setParent(obj.scrollBox2);
    obj.rclMagias4:setName("rclMagias4");
    obj.rclMagias4:setField("magias4Lista");
    obj.rclMagias4:setAlign("top");
    obj.rclMagias4:setHeight(260);
    obj.rclMagias4:setItemHeight(260);
    obj.rclMagias4:setTemplateForm("frmItemMagia");

    obj.layout28 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.scrollBox2);
    obj.layout28:setAlign("top");
    obj.layout28:setHeight(12);
    obj.layout28:setName("layout28");

    obj.label39 = GUI.fromHandle(_obj_newObject("label"));
    obj.label39:setParent(obj.scrollBox2);
    obj.label39:setText("Magia 5");
    obj.label39:setAlign("top");
    obj.label39:setName("label39");

    obj.btnAddMagia5 = GUI.fromHandle(_obj_newObject("button"));
    obj.btnAddMagia5:setParent(obj.scrollBox2);
    obj.btnAddMagia5:setName("btnAddMagia5");
    obj.btnAddMagia5:setText("+ Adicionar Magia 5");
    obj.btnAddMagia5:setAlign("top");
    obj.btnAddMagia5:setHeight(32);

    obj.rclMagias5 = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclMagias5:setParent(obj.scrollBox2);
    obj.rclMagias5:setName("rclMagias5");
    obj.rclMagias5:setField("magias5Lista");
    obj.rclMagias5:setAlign("top");
    obj.rclMagias5:setHeight(260);
    obj.rclMagias5:setItemHeight(260);
    obj.rclMagias5:setTemplateForm("frmItemMagia");

    obj.layout29 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.scrollBox2);
    obj.layout29:setAlign("top");
    obj.layout29:setHeight(16);
    obj.layout29:setName("layout29");

    obj.tab3 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab3:setParent(obj.tabControl1);
    obj.tab3:setTitle("Pedras");
    obj.tab3:setName("tab3");

    obj.scrollBox3 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox3:setParent(obj.tab3);
    obj.scrollBox3:setAlign("client");
    obj.scrollBox3:setName("scrollBox3");

    obj.layout30 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.scrollBox3);
    obj.layout30:setAlign("top");
    obj.layout30:setHeight(10);
    obj.layout30:setName("layout30");

    obj.btnAddPedra = GUI.fromHandle(_obj_newObject("button"));
    obj.btnAddPedra:setParent(obj.scrollBox3);
    obj.btnAddPedra:setName("btnAddPedra");
    obj.btnAddPedra:setText("+ Adicionar Pedra");
    obj.btnAddPedra:setAlign("top");
    obj.btnAddPedra:setHeight(34);
    obj.btnAddPedra:setWidth(180);
    obj.btnAddPedra:setLeft(10);

    obj.layout31 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout31:setParent(obj.scrollBox3);
    obj.layout31:setAlign("top");
    obj.layout31:setHeight(10);
    obj.layout31:setName("layout31");

    obj.rclPedras = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclPedras:setParent(obj.scrollBox3);
    obj.rclPedras:setName("rclPedras");
    obj.rclPedras:setField("pedras");
    obj.rclPedras:setAlign("top");
    obj.rclPedras:setHeight(1600);
    obj.rclPedras:setTemplateForm("frmPedraItem");
    obj.rclPedras:setItemHeight(360);

    obj.layout32 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout32:setParent(obj.scrollBox3);
    obj.layout32:setAlign("top");
    obj.layout32:setHeight(16);
    obj.layout32:setName("layout32");

    obj.tab4 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab4:setParent(obj.tabControl1);
    obj.tab4:setTitle("Itens");
    obj.tab4:setName("tab4");

    obj.scrollBox4 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox4:setParent(obj.tab4);
    obj.scrollBox4:setAlign("client");
    obj.scrollBox4:setName("scrollBox4");

    obj.layout33 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout33:setParent(obj.scrollBox4);
    obj.layout33:setAlign("top");
    obj.layout33:setHeight(10);
    obj.layout33:setName("layout33");

    obj.label40 = GUI.fromHandle(_obj_newObject("label"));
    obj.label40:setParent(obj.scrollBox4);
    obj.label40:setText("Armas");
    obj.label40:setAlign("top");
    obj.label40:setName("label40");

    obj.btnAddArma = GUI.fromHandle(_obj_newObject("button"));
    obj.btnAddArma:setParent(obj.scrollBox4);
    obj.btnAddArma:setName("btnAddArma");
    obj.btnAddArma:setText("+ Adicionar Arma");
    obj.btnAddArma:setAlign("top");
    obj.btnAddArma:setHeight(32);

    obj.rclArmas = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclArmas:setParent(obj.scrollBox4);
    obj.rclArmas:setName("rclArmas");
    obj.rclArmas:setField("armas");
    obj.rclArmas:setAlign("top");
    obj.rclArmas:setHeight(420);
    obj.rclArmas:setItemHeight(360);
    obj.rclArmas:setTemplateForm("frmItemArma");

    obj.layout34 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout34:setParent(obj.scrollBox4);
    obj.layout34:setAlign("top");
    obj.layout34:setHeight(12);
    obj.layout34:setName("layout34");

    obj.label41 = GUI.fromHandle(_obj_newObject("label"));
    obj.label41:setParent(obj.scrollBox4);
    obj.label41:setText("Armaduras");
    obj.label41:setAlign("top");
    obj.label41:setName("label41");

    obj.btnAddArmadura = GUI.fromHandle(_obj_newObject("button"));
    obj.btnAddArmadura:setParent(obj.scrollBox4);
    obj.btnAddArmadura:setName("btnAddArmadura");
    obj.btnAddArmadura:setText("+ Adicionar Armadura");
    obj.btnAddArmadura:setAlign("top");
    obj.btnAddArmadura:setHeight(32);

    obj.rclArmaduras = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclArmaduras:setParent(obj.scrollBox4);
    obj.rclArmaduras:setName("rclArmaduras");
    obj.rclArmaduras:setField("armadurasLista");
    obj.rclArmaduras:setAlign("top");
    obj.rclArmaduras:setHeight(340);
    obj.rclArmaduras:setItemHeight(300);
    obj.rclArmaduras:setTemplateForm("frmItemArmadura");

    obj.layout35 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout35:setParent(obj.scrollBox4);
    obj.layout35:setAlign("top");
    obj.layout35:setHeight(12);
    obj.layout35:setName("layout35");

    obj.label42 = GUI.fromHandle(_obj_newObject("label"));
    obj.label42:setParent(obj.scrollBox4);
    obj.label42:setText("Consumíveis");
    obj.label42:setAlign("top");
    obj.label42:setName("label42");

    obj.btnAddConsumivel = GUI.fromHandle(_obj_newObject("button"));
    obj.btnAddConsumivel:setParent(obj.scrollBox4);
    obj.btnAddConsumivel:setName("btnAddConsumivel");
    obj.btnAddConsumivel:setText("+ Adicionar Consumível");
    obj.btnAddConsumivel:setAlign("top");
    obj.btnAddConsumivel:setHeight(32);

    obj.rclConsumiveis = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclConsumiveis:setParent(obj.scrollBox4);
    obj.rclConsumiveis:setName("rclConsumiveis");
    obj.rclConsumiveis:setField("consumiveis");
    obj.rclConsumiveis:setAlign("top");
    obj.rclConsumiveis:setHeight(340);
    obj.rclConsumiveis:setItemHeight(300);
    obj.rclConsumiveis:setTemplateForm("frmItemConsumivel");

    obj.layout36 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout36:setParent(obj.scrollBox4);
    obj.layout36:setAlign("top");
    obj.layout36:setHeight(12);
    obj.layout36:setName("layout36");

    obj.label43 = GUI.fromHandle(_obj_newObject("label"));
    obj.label43:setParent(obj.scrollBox4);
    obj.label43:setText("Utilizáveis com Dano");
    obj.label43:setAlign("top");
    obj.label43:setName("label43");

    obj.btnAddUtilDano = GUI.fromHandle(_obj_newObject("button"));
    obj.btnAddUtilDano:setParent(obj.scrollBox4);
    obj.btnAddUtilDano:setName("btnAddUtilDano");
    obj.btnAddUtilDano:setText("+ Adicionar Utilizável (Dano)");
    obj.btnAddUtilDano:setAlign("top");
    obj.btnAddUtilDano:setHeight(32);

    obj.rclUtilizaveisDano = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclUtilizaveisDano:setParent(obj.scrollBox4);
    obj.rclUtilizaveisDano:setName("rclUtilizaveisDano");
    obj.rclUtilizaveisDano:setField("utilizaveisDano");
    obj.rclUtilizaveisDano:setAlign("top");
    obj.rclUtilizaveisDano:setHeight(380);
    obj.rclUtilizaveisDano:setItemHeight(340);
    obj.rclUtilizaveisDano:setTemplateForm("frmItemUtilizavelDano");

    obj.layout37 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout37:setParent(obj.scrollBox4);
    obj.layout37:setAlign("top");
    obj.layout37:setHeight(12);
    obj.layout37:setName("layout37");

    obj.label44 = GUI.fromHandle(_obj_newObject("label"));
    obj.label44:setParent(obj.scrollBox4);
    obj.label44:setText("Mochila");
    obj.label44:setAlign("top");
    obj.label44:setName("label44");

    obj.btnAddMochila = GUI.fromHandle(_obj_newObject("button"));
    obj.btnAddMochila:setParent(obj.scrollBox4);
    obj.btnAddMochila:setName("btnAddMochila");
    obj.btnAddMochila:setText("+ Adicionar Item (Mochila)");
    obj.btnAddMochila:setAlign("top");
    obj.btnAddMochila:setHeight(32);

    obj.rclMochila = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclMochila:setParent(obj.scrollBox4);
    obj.rclMochila:setName("rclMochila");
    obj.rclMochila:setField("mochila");
    obj.rclMochila:setAlign("top");
    obj.rclMochila:setHeight(340);
    obj.rclMochila:setItemHeight(200);
    obj.rclMochila:setTemplateForm("frmItemMochila");

    obj.layout38 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout38:setParent(obj.scrollBox4);
    obj.layout38:setAlign("top");
    obj.layout38:setHeight(16);
    obj.layout38:setName("layout38");

    obj.tab5 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab5:setParent(obj.tabControl1);
    obj.tab5:setTitle("Habs Criavel");
    obj.tab5:setName("tab5");

    obj.scrollBox5 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox5:setParent(obj.tab5);
    obj.scrollBox5:setAlign("client");
    obj.scrollBox5:setName("scrollBox5");

    obj.layout39 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout39:setParent(obj.scrollBox5);
    obj.layout39:setAlign("top");
    obj.layout39:setHeight(5);
    obj.layout39:setName("layout39");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox5);
    obj.rectangle1:setAlign("top");
    obj.rectangle1:setHeight(35);
    obj.rectangle1:setName("rectangle1");

    obj.btnAddHabCriavel = GUI.fromHandle(_obj_newObject("button"));
    obj.btnAddHabCriavel:setParent(obj.rectangle1);
    obj.btnAddHabCriavel:setAlign("client");
    obj.btnAddHabCriavel:setName("btnAddHabCriavel");
    obj.btnAddHabCriavel:setText("+ Adcionar Hab Criavel");

    obj.layout40 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout40:setParent(obj.scrollBox5);
    obj.layout40:setAlign("top");
    obj.layout40:setHeight(5);
    obj.layout40:setName("layout40");

    obj.rclHabsCriavel = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclHabsCriavel:setParent(obj.scrollBox5);
    obj.rclHabsCriavel:setAlign("client");
    obj.rclHabsCriavel:setName("rclHabsCriavel");
    obj.rclHabsCriavel:setField("habsCriaveis");
    obj.rclHabsCriavel:setTemplateForm("frmItemHabCriavel");

    obj.tab6 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab6:setParent(obj.tabControl1);
    obj.tab6:setTitle("Anotações");
    obj.tab6:setName("tab6");

    obj.scrollBox6 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox6:setParent(obj.tab6);
    obj.scrollBox6:setAlign("client");
    obj.scrollBox6:setName("scrollBox6");

    obj.layout41 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout41:setParent(obj.scrollBox6);
    obj.layout41:setAlign("top");
    obj.layout41:setHeight(10);
    obj.layout41:setName("layout41");

    obj.label45 = GUI.fromHandle(_obj_newObject("label"));
    obj.label45:setParent(obj.scrollBox6);
    obj.label45:setText("Anotações");
    obj.label45:setAlign("top");
    obj.label45:setFontSize(16);
    obj.label45:setName("label45");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.scrollBox6);
    obj.textEditor1:setField("anotacoes");
    obj.textEditor1:setAlign("top");
    obj.textEditor1:setHeight(600);
    obj.textEditor1:setName("textEditor1");

    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (field, oldValue, newValue)
            recalc(sheet);
        end);

    obj._e_event1 = obj.dataLink2:addEventListener("onChange",
        function (field, oldValue, newValue)
            recalc(sheet);
        end);

    obj._e_event2 = obj.dataLink3:addEventListener("onChange",
        function (field, oldValue, newValue)
            recalc(sheet);
        end);

    obj._e_event3 = obj.dataLink4:addEventListener("onChange",
        function (field, oldValue, newValue)
            recalc(sheet);
        end);

    obj._e_event4 = obj.dataLink5:addEventListener("onChange",
        function (field, oldValue, newValue)
            recalc(sheet);
        end);

    obj._e_event5 = obj.dataLink6:addEventListener("onChange",
        function (field, oldValue, newValue)
            recalc(sheet);
        end);

    obj._e_event6 = obj.dataLink7:addEventListener("onChange",
        function (field, oldValue, newValue)
            recalc(sheet);
        end);

    obj._e_event7 = obj.dataLink8:addEventListener("onChange",
        function (field, oldValue, newValue)
            recalc(sheet);
        end);

    obj._e_event8 = obj.dataLink9:addEventListener("onChange",
        function (field, oldValue, newValue)
            recalc(sheet);
        end);

    obj._e_event9 = obj.dataLink10:addEventListener("onChange",
        function (field, oldValue, newValue)
            recalc(sheet);
        end);

    obj._e_event10 = obj.dataLink11:addEventListener("onChange",
        function (field, oldValue, newValue)
            recalc(sheet);
        end);

    obj._e_event11 = obj.dataLink12:addEventListener("onChange",
        function (field, oldValue, newValue)
            recalc(sheet);
        end);

    obj._e_event12 = obj.button1:addEventListener("onClick",
        function (event)
            rolarAtributo(sheet, "FOR", "Teste de Força");
        end);

    obj._e_event13 = obj.dataLink13:addEventListener("onChange",
        function (field, oldValue, newValue)
            recalc(sheet);
        end);

    obj._e_event14 = obj.button2:addEventListener("onClick",
        function (event)
            rolarAtributo(sheet, "DES", "Teste de Destreza");
        end);

    obj._e_event15 = obj.dataLink14:addEventListener("onChange",
        function (field, oldValue, newValue)
            recalc(sheet);
        end);

    obj._e_event16 = obj.button3:addEventListener("onClick",
        function (event)
            rolarAtributo(sheet, "CON", "Teste de Constituição");
        end);

    obj._e_event17 = obj.dataLink15:addEventListener("onChange",
        function (field, oldValue, newValue)
            recalc(sheet);
        end);

    obj._e_event18 = obj.button4:addEventListener("onClick",
        function (event)
            rolarAtributo(sheet, "INT", "Teste de Inteligência");
        end);

    obj._e_event19 = obj.dataLink16:addEventListener("onChange",
        function (field, oldValue, newValue)
            recalc(sheet);
        end);

    obj._e_event20 = obj.button5:addEventListener("onClick",
        function (event)
            rolarAtributo(sheet, "SAB", "Teste de Sabedoria");
        end);

    obj._e_event21 = obj.dataLink17:addEventListener("onChange",
        function (field, oldValue, newValue)
            recalc(sheet);
        end);

    obj._e_event22 = obj.button6:addEventListener("onClick",
        function (event)
            rolarAtributo(sheet, "CAR", "Teste de Carisma");
        end);

    obj._e_event23 = obj.dataLink18:addEventListener("onChange",
        function (field, oldValue, newValue)
            recalc(sheet);
        end);

    obj._e_event24 = obj.button7:addEventListener("onClick",
        function (event)
            rolarIniciativa(sheet);
        end);

    obj._e_event25 = obj.btnAddTalento:addEventListener("onClick",
        function (event)
            adicionarTalento(sheet, rclTalentos);
        end);

    obj._e_event26 = obj.btnAddTruque:addEventListener("onClick",
        function (event)
            adicionarTruque(sheet, rclTruques);
        end);

    obj._e_event27 = obj.btnAddMagia1:addEventListener("onClick",
        function (event)
            adicionarMagia1(sheet, rclMagias1);
        end);

    obj._e_event28 = obj.btnAddMagia2:addEventListener("onClick",
        function (event)
            adicionarMagia2(sheet, rclMagias2);
        end);

    obj._e_event29 = obj.btnAddMagia3:addEventListener("onClick",
        function (event)
            adicionarMagia3(sheet, rclMagias3);
        end);

    obj._e_event30 = obj.btnAddMagia4:addEventListener("onClick",
        function (event)
            adicionarMagia4(sheet, rclMagias4);
        end);

    obj._e_event31 = obj.btnAddMagia5:addEventListener("onClick",
        function (event)
            adicionarMagia5(sheet, rclMagias5);
        end);

    obj._e_event32 = obj.btnAddPedra:addEventListener("onClick",
        function (event)
            adicionarPedra(sheet, rclPedras);
        end);

    obj._e_event33 = obj.btnAddArma:addEventListener("onClick",
        function (event)
            adicionarArma(sheet, rclArmas);
        end);

    obj._e_event34 = obj.btnAddArmadura:addEventListener("onClick",
        function (event)
            adicionarArmadura(sheet, rclArmaduras);
        end);

    obj._e_event35 = obj.btnAddConsumivel:addEventListener("onClick",
        function (event)
            adicionarConsumivel(sheet, rclConsumiveis);
        end);

    obj._e_event36 = obj.btnAddUtilDano:addEventListener("onClick",
        function (event)
            adicionarUtilizavelDano(sheet, self.rclUtilizaveisDano);
        end);

    obj._e_event37 = obj.btnAddMochila:addEventListener("onClick",
        function (event)
            adicionarItemMochila(sheet, self.rclMochila);
        end);

    obj._e_event38 = obj.btnAddHabCriavel:addEventListener("onClick",
        function (event)
            adicionarHabCriavel(sheet, self.rclHabsCriavel);
        end);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event38);
        __o_rrpgObjs.removeEventListenerById(self._e_event37);
        __o_rrpgObjs.removeEventListenerById(self._e_event36);
        __o_rrpgObjs.removeEventListenerById(self._e_event35);
        __o_rrpgObjs.removeEventListenerById(self._e_event34);
        __o_rrpgObjs.removeEventListenerById(self._e_event33);
        __o_rrpgObjs.removeEventListenerById(self._e_event32);
        __o_rrpgObjs.removeEventListenerById(self._e_event31);
        __o_rrpgObjs.removeEventListenerById(self._e_event30);
        __o_rrpgObjs.removeEventListenerById(self._e_event29);
        __o_rrpgObjs.removeEventListenerById(self._e_event28);
        __o_rrpgObjs.removeEventListenerById(self._e_event27);
        __o_rrpgObjs.removeEventListenerById(self._e_event26);
        __o_rrpgObjs.removeEventListenerById(self._e_event25);
        __o_rrpgObjs.removeEventListenerById(self._e_event24);
        __o_rrpgObjs.removeEventListenerById(self._e_event23);
        __o_rrpgObjs.removeEventListenerById(self._e_event22);
        __o_rrpgObjs.removeEventListenerById(self._e_event21);
        __o_rrpgObjs.removeEventListenerById(self._e_event20);
        __o_rrpgObjs.removeEventListenerById(self._e_event19);
        __o_rrpgObjs.removeEventListenerById(self._e_event18);
        __o_rrpgObjs.removeEventListenerById(self._e_event17);
        __o_rrpgObjs.removeEventListenerById(self._e_event16);
        __o_rrpgObjs.removeEventListenerById(self._e_event15);
        __o_rrpgObjs.removeEventListenerById(self._e_event14);
        __o_rrpgObjs.removeEventListenerById(self._e_event13);
        __o_rrpgObjs.removeEventListenerById(self._e_event12);
        __o_rrpgObjs.removeEventListenerById(self._e_event11);
        __o_rrpgObjs.removeEventListenerById(self._e_event10);
        __o_rrpgObjs.removeEventListenerById(self._e_event9);
        __o_rrpgObjs.removeEventListenerById(self._e_event8);
        __o_rrpgObjs.removeEventListenerById(self._e_event7);
        __o_rrpgObjs.removeEventListenerById(self._e_event6);
        __o_rrpgObjs.removeEventListenerById(self._e_event5);
        __o_rrpgObjs.removeEventListenerById(self._e_event4);
        __o_rrpgObjs.removeEventListenerById(self._e_event3);
        __o_rrpgObjs.removeEventListenerById(self._e_event2);
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.layout31 ~= nil then self.layout31:destroy(); self.layout31 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.rclTruques ~= nil then self.rclTruques:destroy(); self.rclTruques = nil; end;
        if self.scrollBox5 ~= nil then self.scrollBox5:destroy(); self.scrollBox5 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.rclMochila ~= nil then self.rclMochila:destroy(); self.rclMochila = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.rclArmas ~= nil then self.rclArmas:destroy(); self.rclArmas = nil; end;
        if self.rclMagias5 ~= nil then self.rclMagias5:destroy(); self.rclMagias5 = nil; end;
        if self.tab2 ~= nil then self.tab2:destroy(); self.tab2 = nil; end;
        if self.btnAddMagia5 ~= nil then self.btnAddMagia5:destroy(); self.btnAddMagia5 = nil; end;
        if self.rectProntoUpar ~= nil then self.rectProntoUpar:destroy(); self.rectProntoUpar = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.dataLink16 ~= nil then self.dataLink16:destroy(); self.dataLink16 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.label43 ~= nil then self.label43:destroy(); self.label43 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.rclPedras ~= nil then self.rclPedras:destroy(); self.rclPedras = nil; end;
        if self.layout37 ~= nil then self.layout37:destroy(); self.layout37 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.lblProntoUpar ~= nil then self.lblProntoUpar:destroy(); self.lblProntoUpar = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.dataLink18 ~= nil then self.dataLink18:destroy(); self.dataLink18 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.rclMagias3 ~= nil then self.rclMagias3:destroy(); self.rclMagias3 = nil; end;
        if self.btnAddTalento ~= nil then self.btnAddTalento:destroy(); self.btnAddTalento = nil; end;
        if self.btnAddTruque ~= nil then self.btnAddTruque:destroy(); self.btnAddTruque = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.scrollBox6 ~= nil then self.scrollBox6:destroy(); self.scrollBox6 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.layout40 ~= nil then self.layout40:destroy(); self.layout40 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
        if self.layout38 ~= nil then self.layout38:destroy(); self.layout38 = nil; end;
        if self.btnAddMagia2 ~= nil then self.btnAddMagia2:destroy(); self.btnAddMagia2 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.label45 ~= nil then self.label45:destroy(); self.label45 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.rclHabsCriavel ~= nil then self.rclHabsCriavel:destroy(); self.rclHabsCriavel = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.btnAddArmadura ~= nil then self.btnAddArmadura:destroy(); self.btnAddArmadura = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.button6 ~= nil then self.button6:destroy(); self.button6 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.layout35 ~= nil then self.layout35:destroy(); self.layout35 = nil; end;
        if self.btnAddPedra ~= nil then self.btnAddPedra:destroy(); self.btnAddPedra = nil; end;
        if self.layout32 ~= nil then self.layout32:destroy(); self.layout32 = nil; end;
        if self.rclMagias1 ~= nil then self.rclMagias1:destroy(); self.rclMagias1 = nil; end;
        if self.scrollBox4 ~= nil then self.scrollBox4:destroy(); self.scrollBox4 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.rclArmaduras ~= nil then self.rclArmaduras:destroy(); self.rclArmaduras = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.btnAddMochila ~= nil then self.btnAddMochila:destroy(); self.btnAddMochila = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.scrollBox3 ~= nil then self.scrollBox3:destroy(); self.scrollBox3 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.tab3 ~= nil then self.tab3:destroy(); self.tab3 = nil; end;
        if self.btnAddMagia4 ~= nil then self.btnAddMagia4:destroy(); self.btnAddMagia4 = nil; end;
        if self.tabControl1 ~= nil then self.tabControl1:destroy(); self.tabControl1 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.dataLink17 ~= nil then self.dataLink17:destroy(); self.dataLink17 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.tab4 ~= nil then self.tab4:destroy(); self.tab4 = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.btnAddConsumivel ~= nil then self.btnAddConsumivel:destroy(); self.btnAddConsumivel = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.rclUtilizaveisDano ~= nil then self.rclUtilizaveisDano:destroy(); self.rclUtilizaveisDano = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.btnAddHabCriavel ~= nil then self.btnAddHabCriavel:destroy(); self.btnAddHabCriavel = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.rclMagias4 ~= nil then self.rclMagias4:destroy(); self.rclMagias4 = nil; end;
        if self.rclTalentos ~= nil then self.rclTalentos:destroy(); self.rclTalentos = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.btnAddArma ~= nil then self.btnAddArma:destroy(); self.btnAddArma = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.dataLink15 ~= nil then self.dataLink15:destroy(); self.dataLink15 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        if self.label44 ~= nil then self.label44:destroy(); self.label44 = nil; end;
        if self.layout39 ~= nil then self.layout39:destroy(); self.layout39 = nil; end;
        if self.btnAddMagia1 ~= nil then self.btnAddMagia1:destroy(); self.btnAddMagia1 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.tab6 ~= nil then self.tab6:destroy(); self.tab6 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        if self.layout36 ~= nil then self.layout36:destroy(); self.layout36 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.button5 ~= nil then self.button5:destroy(); self.button5 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.rclConsumiveis ~= nil then self.rclConsumiveis:destroy(); self.rclConsumiveis = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.layout33 ~= nil then self.layout33:destroy(); self.layout33 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.rclMagias2 ~= nil then self.rclMagias2:destroy(); self.rclMagias2 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.layout41 ~= nil then self.layout41:destroy(); self.layout41 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.scrollBox2 ~= nil then self.scrollBox2:destroy(); self.scrollBox2 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.btnAddMagia3 ~= nil then self.btnAddMagia3:destroy(); self.btnAddMagia3 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.btnAddUtilDano ~= nil then self.btnAddUtilDano:destroy(); self.btnAddUtilDano = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.layout34 ~= nil then self.layout34:destroy(); self.layout34 = nil; end;
        if self.tab5 ~= nil then self.tab5:destroy(); self.tab5 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.button7 ~= nil then self.button7:destroy(); self.button7 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmPedraRPG()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmPedraRPG();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmPedraRPG = {
    newEditor = newfrmPedraRPG, 
    new = newfrmPedraRPG, 
    name = "frmPedraRPG", 
    dataType = "br.com.rrpg.PedraRPG_S3", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    cacheMode = "none", 
    title = "Pedra RPG", 
    description="Ficha Pedra RPG"};

frmPedraRPG = _frmPedraRPG;
Firecast.registrarForm(_frmPedraRPG);
Firecast.registrarDataType(_frmPedraRPG);

return _frmPedraRPG;
