as3_components
==============
```as
var mainController:ComponentsController = new ComponentsController();
mainController.addController(new KeyComponentController(stage));
var comp:IUIComponent = new SimpleKeyComponent();
mainController.registerComponent(comp);
stage.addChild(comp.getSkin());
```
