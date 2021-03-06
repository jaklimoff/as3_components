/**
 * Created by jaklimoff
 * Date: 01.01.15
 * Time: 22:40
 *
 */
package com.klimovapi.uicomps {
import com.klimovapi.uicomps.controllers.ComponentHandler;
import com.klimovapi.uicomps.interfaces.IComponent;

/**
 * Main Class to handle all components and their
 * interfaces.
 */
public class ComponentsController {
    private static var instance:ComponentsController = new ComponentsController();
    public static function getInstance():ComponentsController {
        return instance;
    }

    /** all registered component handlers */
    private var _componentHandlers:Vector.<ComponentHandler> = new <ComponentHandler>[];

    public function ComponentsController() {
        if (instance) throw new Error("It can only be accessed through ComponentsController.getInstance()");
    }

    public function addController(controller:ComponentHandler):void {
        _componentHandlers.push(controller);
    }

    public function registerComponent(component:IComponent):void {
        for each (var controller:ComponentHandler in _componentHandlers) {
            controller.register(component);
        }
        component.onRegister();
    }

    /**
     * Destroy component. And delete it from all handlers.
     * @param component
     */
    public function destroyComponent(component:IComponent):void {
        for each (var controller:ComponentHandler in _componentHandlers) {
            controller.destroy(component);
        }
        component.onDestroy();
    }
}
}
