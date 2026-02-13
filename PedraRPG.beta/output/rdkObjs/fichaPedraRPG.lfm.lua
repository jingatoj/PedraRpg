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
        _G.rclMagias6 = self.rclMagias6;
        _G.rclMagias7 = self.rclMagias7;
        _G.rclMagias8 = self.rclMagias8;
        _G.rclMagias9 = self.rclMagias9;
        _G.rclMagias10 = self.rclMagias10;
        _G.rclMagias11 = self.rclMagias11;
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
    obj.tab1:setTitle("Inf Do Pers");
    obj.tab1:setName("tab1");

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj.tab1);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setAlign("client");
    obj.rectangle1:setColor("#3b3b3b");
    obj.rectangle1:setStrokeColor("#2a1633");
    obj.rectangle1:setStrokeSize(1);
    obj.rectangle1:setName("rectangle1");

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

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.scrollBox1);
    obj.layout2:setAlign("top");
    obj.layout2:setHeight(50);
    obj.layout2:setLeft(10);
    obj.layout2:setTop(10);
    obj.layout2:setRight(10);
    obj.layout2:setBottom(0);
    obj.layout2:setName("layout2");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout2);
    obj.label1:setText("Pedra RPG");
    obj.label1:setAlign("left");
    obj.label1:setWidth(260);
    obj.label1:setLeft(0);
    obj.label1:setTop(0);
    obj.label1:setRight(0);
    obj.label1:setBottom(0);
    obj.label1:setVertTextAlign("center");
    obj.label1:setFontSize(26);
    obj.label1:setFontColor("#caa0ff");
    lfm_setPropAsString(obj.label1, "fontStyle", "bold");
    obj.label1:setName("label1");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.scrollBox1);
    obj.layout3:setAlign("top");
    obj.layout3:setHeight(12);
    obj.layout3:setName("layout3");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.scrollBox1);
    obj.layout4:setAlign("top");
    obj.layout4:setHeight(86);
    obj.layout4:setName("layout4");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.layout4);
    obj.layout5:setAlign("client");
    obj.layout5:setName("layout5");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.layout5);
    obj.layout6:setAlign("top");
    obj.layout6:setHeight(40);
    obj.layout6:setName("layout6");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout6);
    obj.label2:setText("Nome");
    obj.label2:setAlign("left");
    obj.label2:setWidth(60);
    obj.label2:setFontColor("#d8c8ff");
    obj.label2:setName("label2");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout6);
    obj.edit1:setField("nome");
    obj.edit1:setAlign("left");
    obj.edit1:setWidth(260);
    obj.edit1:setName("edit1");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.layout6);
    obj.layout7:setAlign("left");
    obj.layout7:setWidth(10);
    obj.layout7:setName("layout7");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout6);
    obj.label3:setText("Nível");
    obj.label3:setAlign("left");
    obj.label3:setWidth(60);
    obj.label3:setFontColor("#d8c8ff");
    obj.label3:setName("label3");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout6);
    obj.edit2:setField("nivel");
    obj.edit2:setAlign("left");
    obj.edit2:setWidth(60);
    obj.edit2:setType("number");
    obj.edit2:setName("edit2");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.layout6);
    obj.layout8:setAlign("left");
    obj.layout8:setWidth(10);
    obj.layout8:setName("layout8");

    obj.rectProntoUpar = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectProntoUpar:setParent(obj.layout5);
    obj.rectProntoUpar:setName("rectProntoUpar");
    obj.rectProntoUpar:setAlign("top");
    obj.rectProntoUpar:setHeight(34);
    obj.rectProntoUpar:setStrokeSize(0);
    obj.rectProntoUpar:setVisible(false);

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.rectProntoUpar);
    obj.layout9:setAlign("client");
    obj.layout9:setName("layout9");

    obj.lblProntoUpar = GUI.fromHandle(_obj_newObject("label"));
    obj.lblProntoUpar:setParent(obj.rectProntoUpar);
    obj.lblProntoUpar:setName("lblProntoUpar");
    obj.lblProntoUpar:setText("PRONTO PARA UPAR");
    obj.lblProntoUpar:setAlign("client");
    obj.lblProntoUpar:setHorzTextAlign("center");
    obj.lblProntoUpar:setVertTextAlign("center");
    obj.lblProntoUpar:setFontSize(16);
    obj.lblProntoUpar:setFontColor("#d8c8ff");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.scrollBox1);
    obj.layout10:setAlign("top");
    obj.layout10:setHeight(10);
    obj.layout10:setName("layout10");

    obj.lytColunasTopo = GUI.fromHandle(_obj_newObject("layout"));
    obj.lytColunasTopo:setParent(obj.scrollBox1);
    obj.lytColunasTopo:setName("lytColunasTopo");
    obj.lytColunasTopo:setAlign("top");
    obj.lytColunasTopo:setHeight(720);

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.lytColunasTopo);
    obj.layout11:setAlign("right");
    obj.layout11:setWidth(190);
    obj.layout11:setHeight(260);
    obj.layout11:setMargins({left=10, top=0, right=10, bottom=0});
    obj.layout11:setName("layout11");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.layout11);
    obj.layout12:setAlign("right");
    obj.layout12:setWidth(180);
    obj.layout12:setName("layout12");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout11);
    obj.label4:setText("Foto");
    obj.label4:setAlign("top");
    obj.label4:setHeight(20);
    obj.label4:setFontColor("#d8c8ff");
    obj.label4:setName("label4");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.layout11);
    obj.layout13:setAlign("top");
    obj.layout13:setWidth(190);
    obj.layout13:setHeight(260);
    obj.layout13:setName("layout13");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout13);
    obj.rectangle2:setAlign("client");
    obj.rectangle2:setColor("#1e1e1e");
    obj.rectangle2:setStrokeColor("#5b2a78");
    obj.rectangle2:setStrokeSize(2);
    obj.rectangle2:setName("rectangle2");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout13);
    obj.rectangle3:setAlign("client");
    obj.rectangle3:setMargins({left=6, top=6, right=6, bottom=6});
    obj.rectangle3:setColor("#2a2a2a");
    obj.rectangle3:setStrokeColor("#caa0ff");
    obj.rectangle3:setStrokeSize(1);
    obj.rectangle3:setName("rectangle3");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.layout13);
    obj.image1:setField("imgPersonagem");
    obj.image1:setEditable(true);
    obj.image1:setStyle("autoFit");
    obj.image1:setAlign("top");
    obj.image1:setWidth(170);
    obj.image1:setHeight(240);
    obj.image1:setName("image1");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.lytColunasTopo);
    obj.layout14:setAlign("client");
    obj.layout14:setName("layout14");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout14);
    obj.label5:setText("Atributos");
    obj.label5:setAlign("top");
    obj.label5:setFontSize(18);
    obj.label5:setFontColor("#c084fc");
    lfm_setPropAsString(obj.label5, "fontStyle", "bold");
    obj.label5:setName("label5");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.layout14);
    obj.layout15:setAlign("top");
    obj.layout15:setHeight(6);
    obj.layout15:setName("layout15");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout15);
    obj.rectangle4:setAlign("left");
    obj.rectangle4:setWidth(340);
    obj.rectangle4:setHeight(3);
    obj.rectangle4:setColor("#2a1633");
    obj.rectangle4:setStrokeColor("#6a0dad");
    obj.rectangle4:setStrokeSize(1);
    obj.rectangle4:setName("rectangle4");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.layout15);
    obj.layout16:setAlign("client");
    obj.layout16:setName("layout16");

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.layout14);
    obj.layout17:setAlign("top");
    obj.layout17:setHeight(10);
    obj.layout17:setName("layout17");

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.layout14);
    obj.layout18:setAlign("top");
    obj.layout18:setHeight(28);
    obj.layout18:setName("layout18");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout18);
    obj.label6:setText("");
    obj.label6:setAlign("left");
    obj.label6:setWidth(50);
    obj.label6:setName("label6");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout18);
    obj.label7:setText("MOD");
    obj.label7:setAlign("left");
    obj.label7:setWidth(70);
    obj.label7:setHorzTextAlign("center");
    obj.label7:setFontColor("#d8c8ff");
    obj.label7:setName("label7");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout18);
    obj.label8:setText("Bônus");
    obj.label8:setAlign("left");
    obj.label8:setWidth(70);
    obj.label8:setHorzTextAlign("center");
    obj.label8:setFontColor("#d8c8ff");
    obj.label8:setName("label8");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout18);
    obj.label9:setText("Teste");
    obj.label9:setAlign("left");
    obj.label9:setWidth(90);
    obj.label9:setHorzTextAlign("center");
    obj.label9:setFontColor("#d8c8ff");
    obj.label9:setName("label9");

    obj.layout19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.layout14);
    obj.layout19:setAlign("top");
    obj.layout19:setHeight(34);
    obj.layout19:setName("layout19");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout19);
    obj.label10:setText("FOR");
    obj.label10:setAlign("left");
    obj.label10:setWidth(60);
    obj.label10:setFontColor("#d8c8ff");
    obj.label10:setName("label10");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout19);
    obj.edit3:setField("FOR");
    obj.edit3:setAlign("left");
    obj.edit3:setWidth(70);
    obj.edit3:setType("number");
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setName("edit3");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout19);
    obj.edit4:setField("bonusFOR");
    obj.edit4:setAlign("left");
    obj.edit4:setWidth(70);
    obj.edit4:setType("number");
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setName("edit4");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj.layout19);
    obj.dataLink12:setField("bonusFOR");
    obj.dataLink12:setName("dataLink12");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout19);
    obj.button1:setText("Rolar");
    obj.button1:setAlign("left");
    obj.button1:setWidth(90);
    obj.button1:setName("button1");

    obj.layout20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.layout14);
    obj.layout20:setAlign("top");
    obj.layout20:setHeight(34);
    obj.layout20:setName("layout20");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout20);
    obj.label11:setText("DES");
    obj.label11:setAlign("left");
    obj.label11:setWidth(60);
    obj.label11:setFontColor("#d8c8ff");
    obj.label11:setName("label11");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout20);
    obj.edit5:setField("DES");
    obj.edit5:setAlign("left");
    obj.edit5:setWidth(70);
    obj.edit5:setType("number");
    obj.edit5:setHorzTextAlign("center");
    obj.edit5:setName("edit5");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout20);
    obj.edit6:setField("bonusDES");
    obj.edit6:setAlign("left");
    obj.edit6:setWidth(70);
    obj.edit6:setType("number");
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setName("edit6");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj.layout20);
    obj.dataLink13:setField("bonusDES");
    obj.dataLink13:setName("dataLink13");

    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.layout20);
    obj.button2:setText("Rolar");
    obj.button2:setAlign("left");
    obj.button2:setWidth(90);
    obj.button2:setName("button2");

    obj.layout21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.layout14);
    obj.layout21:setAlign("top");
    obj.layout21:setHeight(34);
    obj.layout21:setName("layout21");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout21);
    obj.label12:setText("CON");
    obj.label12:setAlign("left");
    obj.label12:setWidth(60);
    obj.label12:setFontColor("#d8c8ff");
    obj.label12:setName("label12");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout21);
    obj.edit7:setField("CON");
    obj.edit7:setAlign("left");
    obj.edit7:setWidth(70);
    obj.edit7:setType("number");
    obj.edit7:setHorzTextAlign("center");
    obj.edit7:setName("edit7");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout21);
    obj.edit8:setField("bonusCON");
    obj.edit8:setAlign("left");
    obj.edit8:setWidth(70);
    obj.edit8:setType("number");
    obj.edit8:setHorzTextAlign("center");
    obj.edit8:setName("edit8");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj.layout21);
    obj.dataLink14:setField("bonusCON");
    obj.dataLink14:setName("dataLink14");

    obj.button3 = GUI.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.layout21);
    obj.button3:setText("Rolar");
    obj.button3:setAlign("left");
    obj.button3:setWidth(90);
    obj.button3:setName("button3");

    obj.layout22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.layout14);
    obj.layout22:setAlign("top");
    obj.layout22:setHeight(34);
    obj.layout22:setName("layout22");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout22);
    obj.label13:setText("INT");
    obj.label13:setAlign("left");
    obj.label13:setWidth(60);
    obj.label13:setFontColor("#d8c8ff");
    obj.label13:setName("label13");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout22);
    obj.edit9:setField("INT");
    obj.edit9:setAlign("left");
    obj.edit9:setWidth(70);
    obj.edit9:setType("number");
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setName("edit9");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout22);
    obj.edit10:setField("bonusINT");
    obj.edit10:setAlign("left");
    obj.edit10:setWidth(70);
    obj.edit10:setType("number");
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setName("edit10");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj.layout22);
    obj.dataLink15:setField("bonusINT");
    obj.dataLink15:setName("dataLink15");

    obj.button4 = GUI.fromHandle(_obj_newObject("button"));
    obj.button4:setParent(obj.layout22);
    obj.button4:setText("Rolar");
    obj.button4:setAlign("left");
    obj.button4:setWidth(90);
    obj.button4:setName("button4");

    obj.layout23 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.layout14);
    obj.layout23:setAlign("top");
    obj.layout23:setHeight(34);
    obj.layout23:setName("layout23");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout23);
    obj.label14:setText("SAB");
    obj.label14:setAlign("left");
    obj.label14:setWidth(60);
    obj.label14:setFontColor("#d8c8ff");
    obj.label14:setName("label14");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout23);
    obj.edit11:setField("SAB");
    obj.edit11:setAlign("left");
    obj.edit11:setWidth(70);
    obj.edit11:setType("number");
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setName("edit11");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout23);
    obj.edit12:setField("bonusSAB");
    obj.edit12:setAlign("left");
    obj.edit12:setWidth(70);
    obj.edit12:setType("number");
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setName("edit12");

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj.layout23);
    obj.dataLink16:setField("bonusSAB");
    obj.dataLink16:setName("dataLink16");

    obj.button5 = GUI.fromHandle(_obj_newObject("button"));
    obj.button5:setParent(obj.layout23);
    obj.button5:setText("Rolar");
    obj.button5:setAlign("left");
    obj.button5:setWidth(90);
    obj.button5:setName("button5");

    obj.layout24 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.layout14);
    obj.layout24:setAlign("top");
    obj.layout24:setHeight(34);
    obj.layout24:setName("layout24");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout24);
    obj.label15:setText("CAR");
    obj.label15:setAlign("left");
    obj.label15:setWidth(60);
    obj.label15:setFontColor("#d8c8ff");
    obj.label15:setName("label15");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout24);
    obj.edit13:setField("CAR");
    obj.edit13:setAlign("left");
    obj.edit13:setWidth(70);
    obj.edit13:setType("number");
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setName("edit13");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout24);
    obj.edit14:setField("bonusCAR");
    obj.edit14:setAlign("left");
    obj.edit14:setWidth(70);
    obj.edit14:setType("number");
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setName("edit14");

    obj.dataLink17 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj.layout24);
    obj.dataLink17:setField("bonusCAR");
    obj.dataLink17:setName("dataLink17");

    obj.button6 = GUI.fromHandle(_obj_newObject("button"));
    obj.button6:setParent(obj.layout24);
    obj.button6:setText("Rolar");
    obj.button6:setAlign("left");
    obj.button6:setWidth(90);
    obj.button6:setName("button6");

    obj.layout25 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.layout14);
    obj.layout25:setAlign("top");
    obj.layout25:setHeight(10);
    obj.layout25:setName("layout25");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout14);
    obj.label16:setText("Iniciativa");
    obj.label16:setAlign("top");
    obj.label16:setFontSize(18);
    obj.label16:setFontColor("#c084fc");
    lfm_setPropAsString(obj.label16, "fontStyle", "bold");
    obj.label16:setName("label16");

    obj.layout26 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.layout14);
    obj.layout26:setAlign("top");
    obj.layout26:setHeight(6);
    obj.layout26:setName("layout26");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout26);
    obj.rectangle5:setAlign("left");
    obj.rectangle5:setWidth(340);
    obj.rectangle5:setHeight(3);
    obj.rectangle5:setColor("#2a1633");
    obj.rectangle5:setStrokeColor("#6a0dad");
    obj.rectangle5:setStrokeSize(1);
    obj.rectangle5:setName("rectangle5");

    obj.layout27 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.layout26);
    obj.layout27:setAlign("client");
    obj.layout27:setName("layout27");

    obj.layout28 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.layout14);
    obj.layout28:setAlign("top");
    obj.layout28:setHeight(10);
    obj.layout28:setName("layout28");

    obj.layout29 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.layout14);
    obj.layout29:setAlign("top");
    obj.layout29:setHeight(34);
    obj.layout29:setName("layout29");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout29);
    obj.label17:setText("INI");
    obj.label17:setAlign("left");
    obj.label17:setWidth(120);
    obj.label17:setFontColor("#d8c8ff");
    obj.label17:setName("label17");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout29);
    obj.edit15:setField("INI");
    obj.edit15:setAlign("left");
    obj.edit15:setWidth(70);
    obj.edit15:setType("number");
    obj.edit15:setReadOnly(true);
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setName("edit15");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.layout29);
    obj.label18:setText("Bônus");
    obj.label18:setAlign("left");
    obj.label18:setWidth(55);
    obj.label18:setFontColor("#d8c8ff");
    obj.label18:setName("label18");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout29);
    obj.edit16:setField("bonusINI");
    obj.edit16:setAlign("left");
    obj.edit16:setWidth(70);
    obj.edit16:setType("number");
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setName("edit16");

    obj.dataLink18 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj.layout29);
    obj.dataLink18:setField("bonusINI");
    obj.dataLink18:setName("dataLink18");

    obj.button7 = GUI.fromHandle(_obj_newObject("button"));
    obj.button7:setParent(obj.layout29);
    obj.button7:setText("Rolar INI");
    obj.button7:setAlign("left");
    obj.button7:setWidth(90);
    obj.button7:setName("button7");

    obj.layout30 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.layout14);
    obj.layout30:setAlign("top");
    obj.layout30:setHeight(10);
    obj.layout30:setName("layout30");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout14);
    obj.label19:setText("Recursos e Defesas");
    obj.label19:setAlign("top");
    obj.label19:setFontSize(18);
    obj.label19:setFontColor("#c084fc");
    lfm_setPropAsString(obj.label19, "fontStyle", "bold");
    obj.label19:setName("label19");

    obj.layout31 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout31:setParent(obj.layout14);
    obj.layout31:setAlign("top");
    obj.layout31:setHeight(6);
    obj.layout31:setName("layout31");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout31);
    obj.rectangle6:setAlign("left");
    obj.rectangle6:setWidth(340);
    obj.rectangle6:setHeight(3);
    obj.rectangle6:setColor("#2a1633");
    obj.rectangle6:setStrokeColor("#6a0dad");
    obj.rectangle6:setStrokeSize(1);
    obj.rectangle6:setName("rectangle6");

    obj.layout32 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout32:setParent(obj.layout31);
    obj.layout32:setAlign("client");
    obj.layout32:setName("layout32");

    obj.layout33 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout33:setParent(obj.layout14);
    obj.layout33:setAlign("top");
    obj.layout33:setHeight(10);
    obj.layout33:setName("layout33");

    obj.layout34 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout34:setParent(obj.layout14);
    obj.layout34:setAlign("top");
    obj.layout34:setHeight(40);
    obj.layout34:setName("layout34");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layout34);
    obj.label20:setText("Bônus PV");
    obj.label20:setAlign("left");
    obj.label20:setWidth(90);
    obj.label20:setFontColor("#d8c8ff");
    obj.label20:setName("label20");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout34);
    obj.edit17:setField("bonusPV");
    obj.edit17:setAlign("left");
    obj.edit17:setWidth(70);
    obj.edit17:setType("number");
    obj.edit17:setHorzTextAlign("center");
    obj.edit17:setName("edit17");

    obj.layout35 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout35:setParent(obj.layout34);
    obj.layout35:setAlign("left");
    obj.layout35:setWidth(12);
    obj.layout35:setName("layout35");

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.layout34);
    obj.label21:setText("PV Extra");
    obj.label21:setAlign("left");
    obj.label21:setWidth(80);
    obj.label21:setFontColor("#d8c8ff");
    obj.label21:setName("label21");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout34);
    obj.edit18:setField("pvExtra");
    obj.edit18:setAlign("left");
    obj.edit18:setWidth(70);
    obj.edit18:setType("number");
    obj.edit18:setHorzTextAlign("center");
    obj.edit18:setName("edit18");

    obj.layout36 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout36:setParent(obj.layout34);
    obj.layout36:setAlign("left");
    obj.layout36:setWidth(12);
    obj.layout36:setName("layout36");

    obj.label22 = GUI.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.layout34);
    obj.label22:setText("PV Total");
    obj.label22:setAlign("left");
    obj.label22:setWidth(80);
    obj.label22:setFontColor("#d8c8ff");
    obj.label22:setName("label22");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.layout34);
    obj.edit19:setField("pvTotal");
    obj.edit19:setAlign("left");
    obj.edit19:setWidth(70);
    obj.edit19:setType("number");
    obj.edit19:setHorzTextAlign("center");
    obj.edit19:setReadOnly(true);
    obj.edit19:setName("edit19");

    obj.layout37 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout37:setParent(obj.layout34);
    obj.layout37:setAlign("client");
    obj.layout37:setName("layout37");

    obj.layout38 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout38:setParent(obj.layout14);
    obj.layout38:setAlign("top");
    obj.layout38:setHeight(40);
    obj.layout38:setName("layout38");

    obj.label23 = GUI.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.layout38);
    obj.label23:setText("Mana Pedra");
    obj.label23:setAlign("left");
    obj.label23:setWidth(90);
    obj.label23:setFontColor("#d8c8ff");
    obj.label23:setName("label23");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.layout38);
    obj.edit20:setField("manaPedra");
    obj.edit20:setAlign("left");
    obj.edit20:setWidth(70);
    obj.edit20:setType("number");
    obj.edit20:setHorzTextAlign("center");
    obj.edit20:setName("edit20");

    obj.layout39 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout39:setParent(obj.layout38);
    obj.layout39:setAlign("left");
    obj.layout39:setWidth(12);
    obj.layout39:setName("layout39");

    obj.label24 = GUI.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.layout38);
    obj.label24:setText("Mana Extra");
    obj.label24:setAlign("left");
    obj.label24:setWidth(80);
    obj.label24:setFontColor("#d8c8ff");
    obj.label24:setName("label24");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.layout38);
    obj.edit21:setField("manaExtra");
    obj.edit21:setAlign("left");
    obj.edit21:setWidth(70);
    obj.edit21:setType("number");
    obj.edit21:setHorzTextAlign("center");
    obj.edit21:setName("edit21");

    obj.layout40 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout40:setParent(obj.layout38);
    obj.layout40:setAlign("left");
    obj.layout40:setWidth(12);
    obj.layout40:setName("layout40");

    obj.label25 = GUI.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.layout38);
    obj.label25:setText("Mana Total");
    obj.label25:setAlign("left");
    obj.label25:setWidth(80);
    obj.label25:setFontColor("#d8c8ff");
    obj.label25:setName("label25");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.layout38);
    obj.edit22:setField("manaTotal");
    obj.edit22:setAlign("left");
    obj.edit22:setWidth(70);
    obj.edit22:setType("number");
    obj.edit22:setHorzTextAlign("center");
    obj.edit22:setReadOnly(true);
    obj.edit22:setName("edit22");

    obj.layout41 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout41:setParent(obj.layout38);
    obj.layout41:setAlign("client");
    obj.layout41:setName("layout41");

    obj.layout42 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout42:setParent(obj.layout14);
    obj.layout42:setAlign("top");
    obj.layout42:setHeight(40);
    obj.layout42:setName("layout42");

    obj.label26 = GUI.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.layout42);
    obj.label26:setText("Bônus CA");
    obj.label26:setAlign("left");
    obj.label26:setWidth(90);
    obj.label26:setFontColor("#d8c8ff");
    obj.label26:setName("label26");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.layout42);
    obj.edit23:setField("bonusCA");
    obj.edit23:setAlign("left");
    obj.edit23:setWidth(70);
    obj.edit23:setType("number");
    obj.edit23:setHorzTextAlign("center");
    obj.edit23:setName("edit23");

    obj.layout43 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout43:setParent(obj.layout42);
    obj.layout43:setAlign("left");
    obj.layout43:setWidth(12);
    obj.layout43:setName("layout43");

    obj.label27 = GUI.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.layout42);
    obj.label27:setText("CA Extra");
    obj.label27:setAlign("left");
    obj.label27:setWidth(80);
    obj.label27:setFontColor("#d8c8ff");
    obj.label27:setName("label27");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.layout42);
    obj.edit24:setField("caExtra");
    obj.edit24:setAlign("left");
    obj.edit24:setWidth(70);
    obj.edit24:setType("number");
    obj.edit24:setHorzTextAlign("center");
    obj.edit24:setName("edit24");

    obj.layout44 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout44:setParent(obj.layout42);
    obj.layout44:setAlign("left");
    obj.layout44:setWidth(12);
    obj.layout44:setName("layout44");

    obj.label28 = GUI.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.layout42);
    obj.label28:setText("CA Itens");
    obj.label28:setAlign("left");
    obj.label28:setWidth(80);
    obj.label28:setFontColor("#d8c8ff");
    obj.label28:setName("label28");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.layout42);
    obj.edit25:setField("caItens");
    obj.edit25:setAlign("left");
    obj.edit25:setWidth(70);
    obj.edit25:setType("number");
    obj.edit25:setHorzTextAlign("center");
    obj.edit25:setReadOnly(true);
    obj.edit25:setName("edit25");

    obj.layout45 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout45:setParent(obj.layout42);
    obj.layout45:setAlign("left");
    obj.layout45:setWidth(12);
    obj.layout45:setName("layout45");

    obj.label29 = GUI.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.layout42);
    obj.label29:setText("CA Total");
    obj.label29:setAlign("left");
    obj.label29:setWidth(80);
    obj.label29:setFontColor("#d8c8ff");
    obj.label29:setName("label29");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.layout42);
    obj.edit26:setField("CA");
    obj.edit26:setAlign("left");
    obj.edit26:setWidth(70);
    obj.edit26:setType("number");
    obj.edit26:setHorzTextAlign("center");
    obj.edit26:setReadOnly(true);
    obj.edit26:setName("edit26");

    obj.layout46 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout46:setParent(obj.layout42);
    obj.layout46:setAlign("client");
    obj.layout46:setName("layout46");

    obj.layout47 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout47:setParent(obj.layout14);
    obj.layout47:setAlign("top");
    obj.layout47:setHeight(10);
    obj.layout47:setName("layout47");

    obj.label30 = GUI.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.layout14);
    obj.label30:setText("Progressão");
    obj.label30:setAlign("top");
    obj.label30:setFontSize(18);
    obj.label30:setFontColor("#c084fc");
    lfm_setPropAsString(obj.label30, "fontStyle", "bold");
    obj.label30:setName("label30");

    obj.layout48 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout48:setParent(obj.layout14);
    obj.layout48:setAlign("top");
    obj.layout48:setHeight(6);
    obj.layout48:setName("layout48");

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout48);
    obj.rectangle7:setAlign("left");
    obj.rectangle7:setWidth(340);
    obj.rectangle7:setHeight(3);
    obj.rectangle7:setColor("#2a1633");
    obj.rectangle7:setStrokeColor("#6a0dad");
    obj.rectangle7:setStrokeSize(1);
    obj.rectangle7:setName("rectangle7");

    obj.layout49 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout49:setParent(obj.layout48);
    obj.layout49:setAlign("client");
    obj.layout49:setName("layout49");

    obj.layout50 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout50:setParent(obj.layout14);
    obj.layout50:setAlign("top");
    obj.layout50:setHeight(10);
    obj.layout50:setName("layout50");

    obj.layout51 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout51:setParent(obj.layout14);
    obj.layout51:setAlign("top");
    obj.layout51:setHeight(40);
    obj.layout51:setName("layout51");

    obj.label31 = GUI.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.layout51);
    obj.label31:setText("XP Atual");
    obj.label31:setAlign("left");
    obj.label31:setWidth(70);
    obj.label31:setFontColor("#d8c8ff");
    obj.label31:setName("label31");

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.layout51);
    obj.edit27:setField("xpAtual");
    obj.edit27:setAlign("left");
    obj.edit27:setWidth(90);
    obj.edit27:setType("number");
    obj.edit27:setName("edit27");

    obj.label32 = GUI.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.layout51);
    obj.label32:setText("XP p/ Upar");
    obj.label32:setAlign("left");
    obj.label32:setWidth(80);
    obj.label32:setFontColor("#d8c8ff");
    obj.label32:setName("label32");

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.layout51);
    obj.edit28:setField("xpProxNivel");
    obj.edit28:setAlign("left");
    obj.edit28:setWidth(90);
    obj.edit28:setType("number");
    obj.edit28:setReadOnly(true);
    obj.edit28:setName("edit28");

    obj.label33 = GUI.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.layout51);
    obj.label33:setText("Proficiência");
    obj.label33:setAlign("left");
    obj.label33:setWidth(90);
    obj.label33:setFontColor("#d8c8ff");
    obj.label33:setName("label33");

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.layout51);
    obj.edit29:setField("bonusProficiencia");
    obj.edit29:setAlign("left");
    obj.edit29:setWidth(70);
    obj.edit29:setType("number");
    obj.edit29:setReadOnly(true);
    obj.edit29:setName("edit29");

    obj.layout52 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout52:setParent(obj.layout14);
    obj.layout52:setAlign("top");
    obj.layout52:setHeight(16);
    obj.layout52:setName("layout52");

    obj.tab2 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab2:setParent(obj.tabControl1);
    obj.tab2:setTitle("Magias");
    obj.tab2:setName("tab2");

    obj.scrollBox2 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox2:setParent(obj.tab2);
    obj.scrollBox2:setAlign("client");
    obj.scrollBox2:setName("scrollBox2");

    obj.rectangle8 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.scrollBox2);
    obj.rectangle8:setAlign("client");
    obj.rectangle8:setColor("#3b3b3b");
    obj.rectangle8:setStrokeColor("#2a1633");
    obj.rectangle8:setStrokeSize(1);
    obj.rectangle8:setName("rectangle8");

    obj.layout53 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout53:setParent(obj.scrollBox2);
    obj.layout53:setAlign("top");
    obj.layout53:setHeight(10);
    obj.layout53:setName("layout53");

    obj.label34 = GUI.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.scrollBox2);
    obj.label34:setText("Magias e Talentos");
    obj.label34:setAlign("top");
    obj.label34:setHeight(28);
    obj.label34:setFontSize(18);
    obj.label34:setFontColor("#b57edc");
    lfm_setPropAsString(obj.label34, "fontStyle", "bold");
    obj.label34:setName("label34");

    obj.rectangle9 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.scrollBox2);
    obj.rectangle9:setAlign("top");
    obj.rectangle9:setHeight(2);
    obj.rectangle9:setWidth(420);
    obj.rectangle9:setColor("#2a1633");
    obj.rectangle9:setStrokeColor("#6a0dad");
    obj.rectangle9:setStrokeSize(1);
    obj.rectangle9:setName("rectangle9");

    obj.layout54 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout54:setParent(obj.scrollBox2);
    obj.layout54:setAlign("top");
    obj.layout54:setHeight(10);
    obj.layout54:setName("layout54");

    obj.layout55 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout55:setParent(obj.scrollBox2);
    obj.layout55:setAlign("top");
    obj.layout55:setHeight(10);
    obj.layout55:setName("layout55");

    obj.label35 = GUI.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.scrollBox2);
    obj.label35:setText("Talentos");
    obj.label35:setAlign("top");
    obj.label35:setFontColor("#d8c8ff");
    obj.label35:setName("label35");

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

    obj.layout56 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout56:setParent(obj.scrollBox2);
    obj.layout56:setAlign("top");
    obj.layout56:setHeight(12);
    obj.layout56:setName("layout56");

    obj.label36 = GUI.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj.scrollBox2);
    obj.label36:setText("Truques");
    obj.label36:setAlign("top");
    obj.label36:setFontColor("#d8c8ff");
    obj.label36:setName("label36");

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

    obj.layout57 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout57:setParent(obj.scrollBox2);
    obj.layout57:setAlign("top");
    obj.layout57:setHeight(12);
    obj.layout57:setName("layout57");

    obj.label37 = GUI.fromHandle(_obj_newObject("label"));
    obj.label37:setParent(obj.scrollBox2);
    obj.label37:setText("Magia 1");
    obj.label37:setAlign("top");
    obj.label37:setFontColor("#d8c8ff");
    obj.label37:setName("label37");

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

    obj.layout58 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout58:setParent(obj.scrollBox2);
    obj.layout58:setAlign("top");
    obj.layout58:setHeight(12);
    obj.layout58:setName("layout58");

    obj.label38 = GUI.fromHandle(_obj_newObject("label"));
    obj.label38:setParent(obj.scrollBox2);
    obj.label38:setText("Magia 2");
    obj.label38:setAlign("top");
    obj.label38:setFontColor("#d8c8ff");
    obj.label38:setName("label38");

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

    obj.layout59 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout59:setParent(obj.scrollBox2);
    obj.layout59:setAlign("top");
    obj.layout59:setHeight(12);
    obj.layout59:setName("layout59");

    obj.label39 = GUI.fromHandle(_obj_newObject("label"));
    obj.label39:setParent(obj.scrollBox2);
    obj.label39:setText("Magia 3");
    obj.label39:setAlign("top");
    obj.label39:setFontColor("#d8c8ff");
    obj.label39:setName("label39");

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

    obj.layout60 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout60:setParent(obj.scrollBox2);
    obj.layout60:setAlign("top");
    obj.layout60:setHeight(12);
    obj.layout60:setName("layout60");

    obj.label40 = GUI.fromHandle(_obj_newObject("label"));
    obj.label40:setParent(obj.scrollBox2);
    obj.label40:setText("Magia 4");
    obj.label40:setAlign("top");
    obj.label40:setFontColor("#d8c8ff");
    obj.label40:setName("label40");

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

    obj.layout61 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout61:setParent(obj.scrollBox2);
    obj.layout61:setAlign("top");
    obj.layout61:setHeight(12);
    obj.layout61:setName("layout61");

    obj.label41 = GUI.fromHandle(_obj_newObject("label"));
    obj.label41:setParent(obj.scrollBox2);
    obj.label41:setText("Magia 5");
    obj.label41:setAlign("top");
    obj.label41:setFontColor("#d8c8ff");
    obj.label41:setName("label41");

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

    obj.layout62 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout62:setParent(obj.scrollBox2);
    obj.layout62:setAlign("top");
    obj.layout62:setHeight(12);
    obj.layout62:setName("layout62");

    obj.label42 = GUI.fromHandle(_obj_newObject("label"));
    obj.label42:setParent(obj.scrollBox2);
    obj.label42:setText("Magia 6");
    obj.label42:setAlign("top");
    obj.label42:setFontColor("#d8c8ff");
    obj.label42:setName("label42");

    obj.btnAddMagia6 = GUI.fromHandle(_obj_newObject("button"));
    obj.btnAddMagia6:setParent(obj.scrollBox2);
    obj.btnAddMagia6:setName("btnAddMagia6");
    obj.btnAddMagia6:setText("+ Adicionar Magia 6");
    obj.btnAddMagia6:setAlign("top");
    obj.btnAddMagia6:setHeight(32);

    obj.rclMagias6 = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclMagias6:setParent(obj.scrollBox2);
    obj.rclMagias6:setName("rclMagias6");
    obj.rclMagias6:setField("magias6Lista");
    obj.rclMagias6:setAlign("top");
    obj.rclMagias6:setHeight(260);
    obj.rclMagias6:setItemHeight(260);
    obj.rclMagias6:setTemplateForm("frmItemMagia");

    obj.layout63 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout63:setParent(obj.scrollBox2);
    obj.layout63:setAlign("top");
    obj.layout63:setHeight(12);
    obj.layout63:setName("layout63");

    obj.label43 = GUI.fromHandle(_obj_newObject("label"));
    obj.label43:setParent(obj.scrollBox2);
    obj.label43:setText("Magia 7");
    obj.label43:setAlign("top");
    obj.label43:setFontColor("#d8c8ff");
    obj.label43:setName("label43");

    obj.btnAddMagia7 = GUI.fromHandle(_obj_newObject("button"));
    obj.btnAddMagia7:setParent(obj.scrollBox2);
    obj.btnAddMagia7:setName("btnAddMagia7");
    obj.btnAddMagia7:setText("+ Adicionar Magia 7");
    obj.btnAddMagia7:setAlign("top");
    obj.btnAddMagia7:setHeight(32);

    obj.rclMagias7 = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclMagias7:setParent(obj.scrollBox2);
    obj.rclMagias7:setName("rclMagias7");
    obj.rclMagias7:setField("magias7Lista");
    obj.rclMagias7:setAlign("top");
    obj.rclMagias7:setHeight(260);
    obj.rclMagias7:setItemHeight(260);
    obj.rclMagias7:setTemplateForm("frmItemMagia");

    obj.layout64 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout64:setParent(obj.scrollBox2);
    obj.layout64:setAlign("top");
    obj.layout64:setHeight(12);
    obj.layout64:setName("layout64");

    obj.label44 = GUI.fromHandle(_obj_newObject("label"));
    obj.label44:setParent(obj.scrollBox2);
    obj.label44:setText("Magia 8");
    obj.label44:setAlign("top");
    obj.label44:setFontColor("#d8c8ff");
    obj.label44:setName("label44");

    obj.btnAddMagia8 = GUI.fromHandle(_obj_newObject("button"));
    obj.btnAddMagia8:setParent(obj.scrollBox2);
    obj.btnAddMagia8:setName("btnAddMagia8");
    obj.btnAddMagia8:setText("+ Adicionar Magia 8");
    obj.btnAddMagia8:setAlign("top");
    obj.btnAddMagia8:setHeight(32);

    obj.rclMagias8 = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclMagias8:setParent(obj.scrollBox2);
    obj.rclMagias8:setName("rclMagias8");
    obj.rclMagias8:setField("magias8Lista");
    obj.rclMagias8:setAlign("top");
    obj.rclMagias8:setHeight(260);
    obj.rclMagias8:setItemHeight(260);
    obj.rclMagias8:setTemplateForm("frmItemMagia");

    obj.layout65 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout65:setParent(obj.scrollBox2);
    obj.layout65:setAlign("top");
    obj.layout65:setHeight(12);
    obj.layout65:setName("layout65");

    obj.label45 = GUI.fromHandle(_obj_newObject("label"));
    obj.label45:setParent(obj.scrollBox2);
    obj.label45:setText("Magia 9");
    obj.label45:setAlign("top");
    obj.label45:setFontColor("#d8c8ff");
    obj.label45:setName("label45");

    obj.btnAddMagia9 = GUI.fromHandle(_obj_newObject("button"));
    obj.btnAddMagia9:setParent(obj.scrollBox2);
    obj.btnAddMagia9:setName("btnAddMagia9");
    obj.btnAddMagia9:setText("+ Adicionar Magia 9");
    obj.btnAddMagia9:setAlign("top");
    obj.btnAddMagia9:setHeight(32);

    obj.rclMagias9 = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclMagias9:setParent(obj.scrollBox2);
    obj.rclMagias9:setName("rclMagias9");
    obj.rclMagias9:setField("magias9Lista");
    obj.rclMagias9:setAlign("top");
    obj.rclMagias9:setHeight(260);
    obj.rclMagias9:setItemHeight(260);
    obj.rclMagias9:setTemplateForm("frmItemMagia");

    obj.layout66 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout66:setParent(obj.scrollBox2);
    obj.layout66:setAlign("top");
    obj.layout66:setHeight(12);
    obj.layout66:setName("layout66");

    obj.label46 = GUI.fromHandle(_obj_newObject("label"));
    obj.label46:setParent(obj.scrollBox2);
    obj.label46:setText("Magia 10");
    obj.label46:setAlign("top");
    obj.label46:setFontColor("#d8c8ff");
    obj.label46:setName("label46");

    obj.btnAddMagia10 = GUI.fromHandle(_obj_newObject("button"));
    obj.btnAddMagia10:setParent(obj.scrollBox2);
    obj.btnAddMagia10:setName("btnAddMagia10");
    obj.btnAddMagia10:setText("+ Adicionar Magia 10");
    obj.btnAddMagia10:setAlign("top");
    obj.btnAddMagia10:setHeight(32);

    obj.rclMagias10 = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclMagias10:setParent(obj.scrollBox2);
    obj.rclMagias10:setName("rclMagias10");
    obj.rclMagias10:setField("magias10Lista");
    obj.rclMagias10:setAlign("top");
    obj.rclMagias10:setHeight(260);
    obj.rclMagias10:setItemHeight(260);
    obj.rclMagias10:setTemplateForm("frmItemMagia");

    obj.layout67 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout67:setParent(obj.scrollBox2);
    obj.layout67:setAlign("top");
    obj.layout67:setHeight(12);
    obj.layout67:setName("layout67");

    obj.label47 = GUI.fromHandle(_obj_newObject("label"));
    obj.label47:setParent(obj.scrollBox2);
    obj.label47:setText("Magia 11");
    obj.label47:setAlign("top");
    obj.label47:setFontColor("#d8c8ff");
    obj.label47:setName("label47");

    obj.btnAddMagia11 = GUI.fromHandle(_obj_newObject("button"));
    obj.btnAddMagia11:setParent(obj.scrollBox2);
    obj.btnAddMagia11:setName("btnAddMagia11");
    obj.btnAddMagia11:setText("+ Adicionar Magia 11");
    obj.btnAddMagia11:setAlign("top");
    obj.btnAddMagia11:setHeight(32);

    obj.rclMagias11 = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclMagias11:setParent(obj.scrollBox2);
    obj.rclMagias11:setName("rclMagias11");
    obj.rclMagias11:setField("magias11Lista");
    obj.rclMagias11:setAlign("top");
    obj.rclMagias11:setHeight(260);
    obj.rclMagias11:setItemHeight(260);
    obj.rclMagias11:setTemplateForm("frmItemMagia");

    obj.layout68 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout68:setParent(obj.scrollBox2);
    obj.layout68:setAlign("top");
    obj.layout68:setHeight(16);
    obj.layout68:setName("layout68");

    obj.tab3 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab3:setParent(obj.tabControl1);
    obj.tab3:setTitle("Pedras");
    obj.tab3:setName("tab3");

    obj.scrollBox3 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox3:setParent(obj.tab3);
    obj.scrollBox3:setAlign("client");
    obj.scrollBox3:setName("scrollBox3");

    obj.rectangle10 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.scrollBox3);
    obj.rectangle10:setAlign("client");
    obj.rectangle10:setColor("#3b3b3b");
    obj.rectangle10:setStrokeColor("#2a1633");
    obj.rectangle10:setStrokeSize(1);
    obj.rectangle10:setName("rectangle10");

    obj.layout69 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout69:setParent(obj.scrollBox3);
    obj.layout69:setAlign("top");
    obj.layout69:setHeight(10);
    obj.layout69:setName("layout69");

    obj.label48 = GUI.fromHandle(_obj_newObject("label"));
    obj.label48:setParent(obj.scrollBox3);
    obj.label48:setText("Pedras");
    obj.label48:setAlign("top");
    obj.label48:setHeight(28);
    obj.label48:setFontSize(18);
    obj.label48:setFontColor("#b57edc");
    lfm_setPropAsString(obj.label48, "fontStyle", "bold");
    obj.label48:setName("label48");

    obj.rectangle11 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.scrollBox3);
    obj.rectangle11:setAlign("top");
    obj.rectangle11:setHeight(2);
    obj.rectangle11:setWidth(420);
    obj.rectangle11:setColor("#2a1633");
    obj.rectangle11:setStrokeColor("#6a0dad");
    obj.rectangle11:setStrokeSize(1);
    obj.rectangle11:setName("rectangle11");

    obj.layout70 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout70:setParent(obj.scrollBox3);
    obj.layout70:setAlign("top");
    obj.layout70:setHeight(10);
    obj.layout70:setName("layout70");

    obj.layout71 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout71:setParent(obj.scrollBox3);
    obj.layout71:setAlign("top");
    obj.layout71:setHeight(10);
    obj.layout71:setName("layout71");

    obj.btnAddPedra = GUI.fromHandle(_obj_newObject("button"));
    obj.btnAddPedra:setParent(obj.scrollBox3);
    obj.btnAddPedra:setName("btnAddPedra");
    obj.btnAddPedra:setText("+ Adicionar Pedra");
    obj.btnAddPedra:setAlign("top");
    obj.btnAddPedra:setHeight(34);
    obj.btnAddPedra:setWidth(180);
    obj.btnAddPedra:setLeft(10);

    obj.layout72 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout72:setParent(obj.scrollBox3);
    obj.layout72:setAlign("top");
    obj.layout72:setHeight(10);
    obj.layout72:setName("layout72");

    obj.rclPedras = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclPedras:setParent(obj.scrollBox3);
    obj.rclPedras:setName("rclPedras");
    obj.rclPedras:setField("pedras");
    obj.rclPedras:setAlign("top");
    obj.rclPedras:setHeight(1600);
    obj.rclPedras:setTemplateForm("frmPedraItem");
    obj.rclPedras:setItemHeight(360);

    obj.layout73 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout73:setParent(obj.scrollBox3);
    obj.layout73:setAlign("top");
    obj.layout73:setHeight(16);
    obj.layout73:setName("layout73");

    obj.tab4 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab4:setParent(obj.tabControl1);
    obj.tab4:setTitle("Itens");
    obj.tab4:setName("tab4");

    obj.scrollBox4 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox4:setParent(obj.tab4);
    obj.scrollBox4:setAlign("client");
    obj.scrollBox4:setName("scrollBox4");

    obj.rectangle12 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.scrollBox4);
    obj.rectangle12:setAlign("client");
    obj.rectangle12:setColor("#3b3b3b");
    obj.rectangle12:setStrokeColor("#2a1633");
    obj.rectangle12:setStrokeSize(1);
    obj.rectangle12:setName("rectangle12");

    obj.layout74 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout74:setParent(obj.scrollBox4);
    obj.layout74:setAlign("top");
    obj.layout74:setHeight(10);
    obj.layout74:setName("layout74");

    obj.label49 = GUI.fromHandle(_obj_newObject("label"));
    obj.label49:setParent(obj.scrollBox4);
    obj.label49:setText("Inventário");
    obj.label49:setAlign("top");
    obj.label49:setHeight(28);
    obj.label49:setFontSize(18);
    obj.label49:setFontColor("#b57edc");
    lfm_setPropAsString(obj.label49, "fontStyle", "bold");
    obj.label49:setName("label49");

    obj.rectangle13 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.scrollBox4);
    obj.rectangle13:setAlign("top");
    obj.rectangle13:setHeight(2);
    obj.rectangle13:setWidth(420);
    obj.rectangle13:setColor("#2a1633");
    obj.rectangle13:setStrokeColor("#6a0dad");
    obj.rectangle13:setStrokeSize(1);
    obj.rectangle13:setName("rectangle13");

    obj.layout75 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout75:setParent(obj.scrollBox4);
    obj.layout75:setAlign("top");
    obj.layout75:setHeight(10);
    obj.layout75:setName("layout75");

    obj.layout76 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout76:setParent(obj.scrollBox4);
    obj.layout76:setAlign("top");
    obj.layout76:setHeight(10);
    obj.layout76:setName("layout76");

    obj.label50 = GUI.fromHandle(_obj_newObject("label"));
    obj.label50:setParent(obj.scrollBox4);
    obj.label50:setText("Armas");
    obj.label50:setAlign("top");
    obj.label50:setFontColor("#d8c8ff");
    obj.label50:setName("label50");

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

    obj.layout77 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout77:setParent(obj.scrollBox4);
    obj.layout77:setAlign("top");
    obj.layout77:setHeight(12);
    obj.layout77:setName("layout77");

    obj.label51 = GUI.fromHandle(_obj_newObject("label"));
    obj.label51:setParent(obj.scrollBox4);
    obj.label51:setText("Armaduras");
    obj.label51:setAlign("top");
    obj.label51:setFontColor("#d8c8ff");
    obj.label51:setName("label51");

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

    obj.layout78 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout78:setParent(obj.scrollBox4);
    obj.layout78:setAlign("top");
    obj.layout78:setHeight(12);
    obj.layout78:setName("layout78");

    obj.label52 = GUI.fromHandle(_obj_newObject("label"));
    obj.label52:setParent(obj.scrollBox4);
    obj.label52:setText("Consumíveis");
    obj.label52:setAlign("top");
    obj.label52:setFontColor("#d8c8ff");
    obj.label52:setName("label52");

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

    obj.layout79 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout79:setParent(obj.scrollBox4);
    obj.layout79:setAlign("top");
    obj.layout79:setHeight(12);
    obj.layout79:setName("layout79");

    obj.label53 = GUI.fromHandle(_obj_newObject("label"));
    obj.label53:setParent(obj.scrollBox4);
    obj.label53:setText("Utilizáveis com Dano");
    obj.label53:setAlign("top");
    obj.label53:setFontColor("#d8c8ff");
    obj.label53:setName("label53");

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

    obj.layout80 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout80:setParent(obj.scrollBox4);
    obj.layout80:setAlign("top");
    obj.layout80:setHeight(12);
    obj.layout80:setName("layout80");

    obj.label54 = GUI.fromHandle(_obj_newObject("label"));
    obj.label54:setParent(obj.scrollBox4);
    obj.label54:setText("Mochila");
    obj.label54:setAlign("top");
    obj.label54:setFontColor("#d8c8ff");
    obj.label54:setName("label54");

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

    obj.layout81 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout81:setParent(obj.scrollBox4);
    obj.layout81:setAlign("top");
    obj.layout81:setHeight(16);
    obj.layout81:setName("layout81");

    obj.tab5 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab5:setParent(obj.tabControl1);
    obj.tab5:setTitle("Habs Criavel");
    obj.tab5:setName("tab5");

    obj.scrollBox5 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox5:setParent(obj.tab5);
    obj.scrollBox5:setAlign("client");
    obj.scrollBox5:setName("scrollBox5");

    obj.rectangle14 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.scrollBox5);
    obj.rectangle14:setAlign("client");
    obj.rectangle14:setColor("#3b3b3b");
    obj.rectangle14:setStrokeColor("#2a1633");
    obj.rectangle14:setStrokeSize(1);
    obj.rectangle14:setName("rectangle14");

    obj.layout82 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout82:setParent(obj.scrollBox5);
    obj.layout82:setAlign("top");
    obj.layout82:setHeight(10);
    obj.layout82:setName("layout82");

    obj.label55 = GUI.fromHandle(_obj_newObject("label"));
    obj.label55:setParent(obj.scrollBox5);
    obj.label55:setText("Habilidades Criáveis");
    obj.label55:setAlign("top");
    obj.label55:setHeight(28);
    obj.label55:setFontSize(18);
    obj.label55:setFontColor("#b57edc");
    lfm_setPropAsString(obj.label55, "fontStyle", "bold");
    obj.label55:setName("label55");

    obj.rectangle15 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle15:setParent(obj.scrollBox5);
    obj.rectangle15:setAlign("top");
    obj.rectangle15:setHeight(2);
    obj.rectangle15:setWidth(420);
    obj.rectangle15:setColor("#2a1633");
    obj.rectangle15:setStrokeColor("#6a0dad");
    obj.rectangle15:setStrokeSize(1);
    obj.rectangle15:setName("rectangle15");

    obj.layout83 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout83:setParent(obj.scrollBox5);
    obj.layout83:setAlign("top");
    obj.layout83:setHeight(10);
    obj.layout83:setName("layout83");

    obj.layout84 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout84:setParent(obj.scrollBox5);
    obj.layout84:setAlign("top");
    obj.layout84:setHeight(5);
    obj.layout84:setName("layout84");

    obj.rectangle16 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle16:setParent(obj.scrollBox5);
    obj.rectangle16:setAlign("top");
    obj.rectangle16:setHeight(35);
    obj.rectangle16:setName("rectangle16");

    obj.btnAddHabCriavel = GUI.fromHandle(_obj_newObject("button"));
    obj.btnAddHabCriavel:setParent(obj.rectangle16);
    obj.btnAddHabCriavel:setAlign("client");
    obj.btnAddHabCriavel:setName("btnAddHabCriavel");
    obj.btnAddHabCriavel:setText("+ Adcionar Hab Criavel");

    obj.layout85 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout85:setParent(obj.scrollBox5);
    obj.layout85:setAlign("top");
    obj.layout85:setHeight(5);
    obj.layout85:setName("layout85");

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

    obj.rectangle17 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle17:setParent(obj.scrollBox6);
    obj.rectangle17:setAlign("client");
    obj.rectangle17:setColor("#3b3b3b");
    obj.rectangle17:setStrokeColor("#2a1633");
    obj.rectangle17:setStrokeSize(1);
    obj.rectangle17:setName("rectangle17");

    obj.layout86 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout86:setParent(obj.scrollBox6);
    obj.layout86:setAlign("top");
    obj.layout86:setHeight(10);
    obj.layout86:setName("layout86");

    obj.label56 = GUI.fromHandle(_obj_newObject("label"));
    obj.label56:setParent(obj.scrollBox6);
    obj.label56:setText("Anotações");
    obj.label56:setAlign("top");
    obj.label56:setHeight(28);
    obj.label56:setFontSize(18);
    obj.label56:setFontColor("#b57edc");
    lfm_setPropAsString(obj.label56, "fontStyle", "bold");
    obj.label56:setName("label56");

    obj.rectangle18 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle18:setParent(obj.scrollBox6);
    obj.rectangle18:setAlign("top");
    obj.rectangle18:setHeight(2);
    obj.rectangle18:setWidth(420);
    obj.rectangle18:setColor("#2a1633");
    obj.rectangle18:setStrokeColor("#6a0dad");
    obj.rectangle18:setStrokeSize(1);
    obj.rectangle18:setName("rectangle18");

    obj.layout87 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout87:setParent(obj.scrollBox6);
    obj.layout87:setAlign("top");
    obj.layout87:setHeight(10);
    obj.layout87:setName("layout87");

    obj.layout88 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout88:setParent(obj.scrollBox6);
    obj.layout88:setAlign("top");
    obj.layout88:setHeight(10);
    obj.layout88:setName("layout88");

    obj.label57 = GUI.fromHandle(_obj_newObject("label"));
    obj.label57:setParent(obj.scrollBox6);
    obj.label57:setText("Anotações");
    obj.label57:setAlign("top");
    obj.label57:setFontSize(16);
    obj.label57:setFontColor("#d8c8ff");
    obj.label57:setName("label57");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.scrollBox6);
    obj.textEditor1:setField("anotacoes");
    obj.textEditor1:setAlign("client");
    obj.textEditor1:setMargins({left=10, top=10, right=10, bottom=10});
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

    obj._e_event32 = obj.btnAddMagia6:addEventListener("onClick",
        function (event)
            adicionarMagia6(sheet, rclMagias6);
        end);

    obj._e_event33 = obj.btnAddMagia7:addEventListener("onClick",
        function (event)
            adicionarMagia7(sheet, rclMagias7);
        end);

    obj._e_event34 = obj.btnAddMagia8:addEventListener("onClick",
        function (event)
            adicionarMagia8(sheet, rclMagias8);
        end);

    obj._e_event35 = obj.btnAddMagia9:addEventListener("onClick",
        function (event)
            adicionarMagia9(sheet, rclMagias9);
        end);

    obj._e_event36 = obj.btnAddMagia10:addEventListener("onClick",
        function (event)
            adicionarMagia10(sheet, rclMagias10);
        end);

    obj._e_event37 = obj.btnAddMagia11:addEventListener("onClick",
        function (event)
            adicionarMagia11(sheet, rclMagias11);
        end);

    obj._e_event38 = obj.btnAddPedra:addEventListener("onClick",
        function (event)
            adicionarPedra(sheet, rclPedras);
        end);

    obj._e_event39 = obj.btnAddArma:addEventListener("onClick",
        function (event)
            adicionarArma(sheet, rclArmas);
        end);

    obj._e_event40 = obj.btnAddArmadura:addEventListener("onClick",
        function (event)
            adicionarArmadura(sheet, rclArmaduras);
        end);

    obj._e_event41 = obj.btnAddConsumivel:addEventListener("onClick",
        function (event)
            adicionarConsumivel(sheet, rclConsumiveis);
        end);

    obj._e_event42 = obj.btnAddUtilDano:addEventListener("onClick",
        function (event)
            adicionarUtilizavelDano(sheet, self.rclUtilizaveisDano);
        end);

    obj._e_event43 = obj.btnAddMochila:addEventListener("onClick",
        function (event)
            adicionarItemMochila(sheet, self.rclMochila);
        end);

    obj._e_event44 = obj.btnAddHabCriavel:addEventListener("onClick",
        function (event)
            adicionarHabCriavel(sheet, self.rclHabsCriavel);
        end);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event44);
        __o_rrpgObjs.removeEventListenerById(self._e_event43);
        __o_rrpgObjs.removeEventListenerById(self._e_event42);
        __o_rrpgObjs.removeEventListenerById(self._e_event41);
        __o_rrpgObjs.removeEventListenerById(self._e_event40);
        __o_rrpgObjs.removeEventListenerById(self._e_event39);
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
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.rclMochila ~= nil then self.rclMochila:destroy(); self.rclMochila = nil; end;
        if self.layout43 ~= nil then self.layout43:destroy(); self.layout43 = nil; end;
        if self.rclArmas ~= nil then self.rclArmas:destroy(); self.rclArmas = nil; end;
        if self.rclMagias5 ~= nil then self.rclMagias5:destroy(); self.rclMagias5 = nil; end;
        if self.layout70 ~= nil then self.layout70:destroy(); self.layout70 = nil; end;
        if self.rectProntoUpar ~= nil then self.rectProntoUpar:destroy(); self.rectProntoUpar = nil; end;
        if self.layout46 ~= nil then self.layout46:destroy(); self.layout46 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.layout75 ~= nil then self.layout75:destroy(); self.layout75 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.layout49 ~= nil then self.layout49:destroy(); self.layout49 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.layout37 ~= nil then self.layout37:destroy(); self.layout37 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.label56 ~= nil then self.label56:destroy(); self.label56 = nil; end;
        if self.layout59 ~= nil then self.layout59:destroy(); self.layout59 = nil; end;
        if self.btnAddMagia10 ~= nil then self.btnAddMagia10:destroy(); self.btnAddMagia10 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.rclMagias11 ~= nil then self.rclMagias11:destroy(); self.rclMagias11 = nil; end;
        if self.layout84 ~= nil then self.layout84:destroy(); self.layout84 = nil; end;
        if self.scrollBox6 ~= nil then self.scrollBox6:destroy(); self.scrollBox6 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.label53 ~= nil then self.label53:destroy(); self.label53 = nil; end;
        if self.layout52 ~= nil then self.layout52:destroy(); self.layout52 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.layout60 ~= nil then self.layout60:destroy(); self.layout60 = nil; end;
        if self.btnAddMagia7 ~= nil then self.btnAddMagia7:destroy(); self.btnAddMagia7 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.label45 ~= nil then self.label45:destroy(); self.label45 = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
        if self.layout57 ~= nil then self.layout57:destroy(); self.layout57 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.btnAddMagia2 ~= nil then self.btnAddMagia2:destroy(); self.btnAddMagia2 = nil; end;
        if self.layout67 ~= nil then self.layout67:destroy(); self.layout67 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.rclHabsCriavel ~= nil then self.rclHabsCriavel:destroy(); self.rclHabsCriavel = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.button6 ~= nil then self.button6:destroy(); self.button6 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.rclMagias1 ~= nil then self.rclMagias1:destroy(); self.rclMagias1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.rclArmaduras ~= nil then self.rclArmaduras:destroy(); self.rclArmaduras = nil; end;
        if self.layout42 ~= nil then self.layout42:destroy(); self.layout42 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.rclMagias6 ~= nil then self.rclMagias6:destroy(); self.rclMagias6 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.layout71 ~= nil then self.layout71:destroy(); self.layout71 = nil; end;
        if self.tabControl1 ~= nil then self.tabControl1:destroy(); self.tabControl1 = nil; end;
        if self.layout45 ~= nil then self.layout45:destroy(); self.layout45 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.layout76 ~= nil then self.layout76:destroy(); self.layout76 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.layout48 ~= nil then self.layout48:destroy(); self.layout48 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.btnAddConsumivel ~= nil then self.btnAddConsumivel:destroy(); self.btnAddConsumivel = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.rclUtilizaveisDano ~= nil then self.rclUtilizaveisDano:destroy(); self.rclUtilizaveisDano = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.layout88 ~= nil then self.layout88:destroy(); self.layout88 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.btnAddHabCriavel ~= nil then self.btnAddHabCriavel:destroy(); self.btnAddHabCriavel = nil; end;
        if self.label57 ~= nil then self.label57:destroy(); self.label57 = nil; end;
        if self.btnAddMagia11 ~= nil then self.btnAddMagia11:destroy(); self.btnAddMagia11 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.rclMagias10 ~= nil then self.rclMagias10:destroy(); self.rclMagias10 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.layout83 ~= nil then self.layout83:destroy(); self.layout83 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.label50 ~= nil then self.label50:destroy(); self.label50 = nil; end;
        if self.layout53 ~= nil then self.layout53:destroy(); self.layout53 = nil; end;
        if self.rclTalentos ~= nil then self.rclTalentos:destroy(); self.rclTalentos = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.btnAddMagia6 ~= nil then self.btnAddMagia6:destroy(); self.btnAddMagia6 = nil; end;
        if self.layout63 ~= nil then self.layout63:destroy(); self.layout63 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.btnAddArma ~= nil then self.btnAddArma:destroy(); self.btnAddArma = nil; end;
        if self.dataLink15 ~= nil then self.dataLink15:destroy(); self.dataLink15 = nil; end;
        if self.label44 ~= nil then self.label44:destroy(); self.label44 = nil; end;
        if self.tab6 ~= nil then self.tab6:destroy(); self.tab6 = nil; end;
        if self.layout54 ~= nil then self.layout54:destroy(); self.layout54 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.btnAddMagia1 ~= nil then self.btnAddMagia1:destroy(); self.btnAddMagia1 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.rclMagias8 ~= nil then self.rclMagias8:destroy(); self.rclMagias8 = nil; end;
        if self.layout66 ~= nil then self.layout66:destroy(); self.layout66 = nil; end;
        if self.rectangle17 ~= nil then self.rectangle17:destroy(); self.rectangle17 = nil; end;
        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.button5 ~= nil then self.button5:destroy(); self.button5 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.layout78 ~= nil then self.layout78:destroy(); self.layout78 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.rclConsumiveis ~= nil then self.rclConsumiveis:destroy(); self.rclConsumiveis = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.rclMagias2 ~= nil then self.rclMagias2:destroy(); self.rclMagias2 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.layout41 ~= nil then self.layout41:destroy(); self.layout41 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.rclMagias7 ~= nil then self.rclMagias7:destroy(); self.rclMagias7 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.layout72 ~= nil then self.layout72:destroy(); self.layout72 = nil; end;
        if self.layout44 ~= nil then self.layout44:destroy(); self.layout44 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.layout77 ~= nil then self.layout77:destroy(); self.layout77 = nil; end;
        if self.layout34 ~= nil then self.layout34:destroy(); self.layout34 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.layout31 ~= nil then self.layout31:destroy(); self.layout31 = nil; end;
        if self.scrollBox5 ~= nil then self.scrollBox5:destroy(); self.scrollBox5 = nil; end;
        if self.rclTruques ~= nil then self.rclTruques:destroy(); self.rclTruques = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.label54 ~= nil then self.label54:destroy(); self.label54 = nil; end;
        if self.layout87 ~= nil then self.layout87:destroy(); self.layout87 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.layout82 ~= nil then self.layout82:destroy(); self.layout82 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.tab2 ~= nil then self.tab2:destroy(); self.tab2 = nil; end;
        if self.label51 ~= nil then self.label51:destroy(); self.label51 = nil; end;
        if self.layout50 ~= nil then self.layout50:destroy(); self.layout50 = nil; end;
        if self.btnAddMagia5 ~= nil then self.btnAddMagia5:destroy(); self.btnAddMagia5 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.layout62 ~= nil then self.layout62:destroy(); self.layout62 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.dataLink16 ~= nil then self.dataLink16:destroy(); self.dataLink16 = nil; end;
        if self.label43 ~= nil then self.label43:destroy(); self.label43 = nil; end;
        if self.layout55 ~= nil then self.layout55:destroy(); self.layout55 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.rclMagias9 ~= nil then self.rclMagias9:destroy(); self.rclMagias9 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.layout69 ~= nil then self.layout69:destroy(); self.layout69 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.rectangle16 ~= nil then self.rectangle16:destroy(); self.rectangle16 = nil; end;
        if self.rclPedras ~= nil then self.rclPedras:destroy(); self.rclPedras = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.lblProntoUpar ~= nil then self.lblProntoUpar:destroy(); self.lblProntoUpar = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.layout79 ~= nil then self.layout79:destroy(); self.layout79 = nil; end;
        if self.dataLink18 ~= nil then self.dataLink18:destroy(); self.dataLink18 = nil; end;
        if self.label49 ~= nil then self.label49:destroy(); self.label49 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.rclMagias3 ~= nil then self.rclMagias3:destroy(); self.rclMagias3 = nil; end;
        if self.btnAddTalento ~= nil then self.btnAddTalento:destroy(); self.btnAddTalento = nil; end;
        if self.btnAddTruque ~= nil then self.btnAddTruque:destroy(); self.btnAddTruque = nil; end;
        if self.rectangle18 ~= nil then self.rectangle18:destroy(); self.rectangle18 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.layout40 ~= nil then self.layout40:destroy(); self.layout40 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.layout73 ~= nil then self.layout73:destroy(); self.layout73 = nil; end;
        if self.layout38 ~= nil then self.layout38:destroy(); self.layout38 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.layout35 ~= nil then self.layout35:destroy(); self.layout35 = nil; end;
        if self.btnAddArmadura ~= nil then self.btnAddArmadura:destroy(); self.btnAddArmadura = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.layout32 ~= nil then self.layout32:destroy(); self.layout32 = nil; end;
        if self.btnAddPedra ~= nil then self.btnAddPedra:destroy(); self.btnAddPedra = nil; end;
        if self.scrollBox4 ~= nil then self.scrollBox4:destroy(); self.scrollBox4 = nil; end;
        if self.layout86 ~= nil then self.layout86:destroy(); self.layout86 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.label55 ~= nil then self.label55:destroy(); self.label55 = nil; end;
        if self.btnAddMagia9 ~= nil then self.btnAddMagia9:destroy(); self.btnAddMagia9 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.btnAddMochila ~= nil then self.btnAddMochila:destroy(); self.btnAddMochila = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.scrollBox3 ~= nil then self.scrollBox3:destroy(); self.scrollBox3 = nil; end;
        if self.layout81 ~= nil then self.layout81:destroy(); self.layout81 = nil; end;
        if self.label47 ~= nil then self.label47:destroy(); self.label47 = nil; end;
        if self.tab3 ~= nil then self.tab3:destroy(); self.tab3 = nil; end;
        if self.layout51 ~= nil then self.layout51:destroy(); self.layout51 = nil; end;
        if self.btnAddMagia4 ~= nil then self.btnAddMagia4:destroy(); self.btnAddMagia4 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.layout65 ~= nil then self.layout65:destroy(); self.layout65 = nil; end;
        if self.dataLink17 ~= nil then self.dataLink17:destroy(); self.dataLink17 = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.tab4 ~= nil then self.tab4:destroy(); self.tab4 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.layout68 ~= nil then self.layout68:destroy(); self.layout68 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.label48 ~= nil then self.label48:destroy(); self.label48 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.rclMagias4 ~= nil then self.rclMagias4:destroy(); self.rclMagias4 = nil; end;
        if self.layout47 ~= nil then self.layout47:destroy(); self.layout47 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        if self.layout74 ~= nil then self.layout74:destroy(); self.layout74 = nil; end;
        if self.layout39 ~= nil then self.layout39:destroy(); self.layout39 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.layout36 ~= nil then self.layout36:destroy(); self.layout36 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.lytColunasTopo ~= nil then self.lytColunasTopo:destroy(); self.lytColunasTopo = nil; end;
        if self.layout58 ~= nil then self.layout58:destroy(); self.layout58 = nil; end;
        if self.layout33 ~= nil then self.layout33:destroy(); self.layout33 = nil; end;
        if self.layout85 ~= nil then self.layout85:destroy(); self.layout85 = nil; end;
        if self.label52 ~= nil then self.label52:destroy(); self.label52 = nil; end;
        if self.btnAddMagia8 ~= nil then self.btnAddMagia8:destroy(); self.btnAddMagia8 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.layout61 ~= nil then self.layout61:destroy(); self.layout61 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.scrollBox2 ~= nil then self.scrollBox2:destroy(); self.scrollBox2 = nil; end;
        if self.layout80 ~= nil then self.layout80:destroy(); self.layout80 = nil; end;
        if self.label46 ~= nil then self.label46:destroy(); self.label46 = nil; end;
        if self.layout56 ~= nil then self.layout56:destroy(); self.layout56 = nil; end;
        if self.btnAddMagia3 ~= nil then self.btnAddMagia3:destroy(); self.btnAddMagia3 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.layout64 ~= nil then self.layout64:destroy(); self.layout64 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.btnAddUtilDano ~= nil then self.btnAddUtilDano:destroy(); self.btnAddUtilDano = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.tab5 ~= nil then self.tab5:destroy(); self.tab5 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.button7 ~= nil then self.button7:destroy(); self.button7 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
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
