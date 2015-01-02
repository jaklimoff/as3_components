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
        var mainController:ComponentsController = new ComponentsController();
        mainController.addController(new KeyComponentController(stage));

        var comp:IUIComponent = new SimpleKeyComponent();
        mainController.registerComponent(comp);
        stage.addChild(comp.getSkin());
    }
}
}
