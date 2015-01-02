as3_components
==============
```php
ComponentsController.getInstance().addController(new KeyComponentController(stage));

var comp:IUIComponent = new SimpleKeyComponent();
ComponentsController.getInstance().registerComponent(comp);
stage.addChild(comp.getSkin());
```
