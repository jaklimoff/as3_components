package {

import com.klimovapi.uicomps.ComponentsController;
import com.klimovapi.uicomps.ComponentsController;
import com.klimovapi.uicomps.component.SimpleKeyComponent;
import com.klimovapi.uicomps.controllers.KeyComponentController;
import com.klimovapi.uicomps.interfaces.IUIComponent;

import flash.display.Sprite;
import flash.text.TextField;

public class Main extends Sprite {
    public function Main() {
        ComponentsController.getInstance().addController(new KeyComponentController(stage));

        var comp:IUIComponent = new SimpleKeyComponent();
        ComponentsController.getInstance().registerComponent(comp);
        stage.addChild(comp.getSkin());
    }
}
}
