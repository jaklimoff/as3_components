as3_components
==============
```php
var mainController:ComponentsController = new ComponentsController();
mainController.addController(new KeyComponentController(stage));
var comp:IUIComponent = new SimpleKeyComponent();
mainController.registerComponent(comp);
stage.addChild(comp.getSkin());
```
