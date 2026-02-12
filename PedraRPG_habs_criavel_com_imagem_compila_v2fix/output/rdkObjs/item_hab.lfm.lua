require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmItemHabCriavel()
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
    obj:setName("frmItemHabCriavel");
    obj:setHeight(260);

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj);
    obj.layout1:setAlign("top");
    obj.layout1:setHeight(5);
    obj.layout1:setName("layout1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj);
    obj.rectangle1:setAlign("top");
    obj.rectangle1:setHeight(250);
    obj.rectangle1:setName("rectangle1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.rectangle1);
    obj.layout2:setAlign("top");
    obj.layout2:setHeight(35);
    obj.layout2:setName("layout2");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout2);
    obj.label1:setAlign("left");
    obj.label1:setWidth(55);
    obj.label1:setText("Nome:");
    obj.label1:setName("label1");

    obj.edtNome = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtNome:setParent(obj.layout2);
    obj.edtNome:setAlign("left");
    obj.edtNome:setWidth(300);
    obj.edtNome:setField("nome");
    obj.edtNome:setName("edtNome");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.layout2);
    obj.layout3:setAlign("left");
    obj.layout3:setWidth(10);
    obj.layout3:setName("layout3");

    obj.btnRemover = GUI.fromHandle(_obj_newObject("button"));
    obj.btnRemover:setParent(obj.layout2);
    obj.btnRemover:setAlign("left");
    obj.btnRemover:setWidth(110);
    obj.btnRemover:setText("Remover");
    obj.btnRemover:setName("btnRemover");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.rectangle1);
    obj.layout4:setAlign("top");
    obj.layout4:setHeight(5);
    obj.layout4:setName("layout4");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.rectangle1);
    obj.layout5:setAlign("top");
    obj.layout5:setHeight(200);
    obj.layout5:setName("layout5");

    obj.imgHab = GUI.fromHandle(_obj_newObject("image"));
    obj.imgHab:setParent(obj.layout5);
    obj.imgHab:setAlign("left");
    obj.imgHab:setWidth(120);
    obj.imgHab:setHeight(180);
    obj.imgHab:setField("imagem");
    obj.imgHab:setName("imgHab");
    obj.imgHab:setEditable(true);
    obj.imgHab:setStyle("autoFit");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.layout5);
    obj.layout6:setAlign("left");
    obj.layout6:setWidth(10);
    obj.layout6:setName("layout6");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.layout5);
    obj.layout7:setAlign("client");
    obj.layout7:setName("layout7");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout7);
    obj.label2:setAlign("top");
    obj.label2:setHeight(20);
    obj.label2:setText("Descrição");
    obj.label2:setName("label2");

    obj.txtDescricao = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.txtDescricao:setParent(obj.layout7);
    obj.txtDescricao:setAlign("client");
    obj.txtDescricao:setField("descricao");
    obj.txtDescricao:setName("txtDescricao");

    obj._e_event0 = obj.btnRemover:addEventListener("onClick",
        function (event)
            NDB.deleteNode(sheet)
        end);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.btnRemover ~= nil then self.btnRemover:destroy(); self.btnRemover = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.txtDescricao ~= nil then self.txtDescricao:destroy(); self.txtDescricao = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.imgHab ~= nil then self.imgHab:destroy(); self.imgHab = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.edtNome ~= nil then self.edtNome:destroy(); self.edtNome = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmItemHabCriavel()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmItemHabCriavel();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmItemHabCriavel = {
    newEditor = newfrmItemHabCriavel, 
    new = newfrmItemHabCriavel, 
    name = "frmItemHabCriavel", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    cacheMode = "none", 
    title = "", 
    description=""};

frmItemHabCriavel = _frmItemHabCriavel;
Firecast.registrarForm(_frmItemHabCriavel);

return _frmItemHabCriavel;
