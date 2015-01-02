/**
 * Created by jaklimoff
 * Date: 01.01.15
 * Time: 22:26
 *
 */
package com.klimovapi.uicomps.controllers {
import com.klimovapi.uicomps.*;
import com.klimovapi.uicomps.interfaces.IComponent;

import flash.utils.describeType;
import flash.utils.getQualifiedClassName;

public class ComponentHandler {
    /** all UI component which are handled by this controller */
    protected var handleComponents:Vector.<IComponent> = new <IComponent>[];

    public function ComponentHandler() {

    }

    public function register(component:*):void {
        if(checkIfClassHasInterface(component)){
            handleComponents.push(component);
        }
    }

    public function destroy(component:*):void {
        var ind:int = handleComponents.indexOf(component);
        if(ind> -1){
            handleComponents.splice(ind, 1);
        }
    }

    private function checkIfClassHasInterface(cl:Object):Boolean {
        var classDescription:XML = describeType(cl);
        var type:String = getQualifiedClassName(handleInterface);
        var xmlList:XMLList = classDescription.implementsInterface.(@type == type);
        if (xmlList.length() > 0) {
            return true;
        }

        return false;
    }

    protected function get handleInterface():Class {
        throw new Error("You must define interface which will be handled by this controller. So override this getter, please.");
    }
}
}
