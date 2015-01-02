/**
 * Created by jaklimoff
 * Date: 02.01.15
 * Time: 13:31
 *
 */
package com.klimovapi.uicomps.controllers {
import com.klimovapi.uicomps.interfaces.IKeyComponent;
import com.klimovapi.uicomps.interfaces.IComponent;

import flash.events.EventDispatcher;
import flash.events.KeyboardEvent;

public class KeyComponentController extends ComponentHandler {

    public function KeyComponentController(dispatcher:EventDispatcher) {
        super();
        dispatcher.addEventListener(KeyboardEvent.KEY_DOWN, onKeyDown);
    }

    private function onKeyDown(event:KeyboardEvent):void {
        for each (var component:IKeyComponent in handleComponents) {
            component.onKeyDown(event.keyCode);
        }
    }

    override protected function get handleInterface():Class {
        return IKeyComponent;
    }
}
}
