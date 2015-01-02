/**
 * Created by jaklimoff
 * Date: 02.01.15
 * Time: 13:40
 *
 */
package com.klimovapi.uicomps.component {
import com.klimovapi.uicomps.interfaces.IKeyComponent;
import com.klimovapi.uicomps.interfaces.IComponent;
import com.klimovapi.uicomps.interfaces.IUIComponent;

import flash.display.DisplayObject;
import flash.display.Sprite;
import flash.text.TextField;
import flash.text.TextFieldAutoSize;
import flash.text.TextFormat;

public class SimpleKeyComponent implements IKeyComponent, IUIComponent {
    private var _skin:Sprite;
    var _tf:TextField;

    public function SimpleKeyComponent() {
        _skin = new Sprite();
        _skin.graphics.beginFill(0x607D8B, 1);
        _skin.graphics.drawRect(0,0,100,100);
        _skin.graphics.endFill();


        _tf = new TextField();
        _skin.addChild(_tf);
        _tf.mouseEnabled = false;
        _tf.autoSize = TextFieldAutoSize.RIGHT;
    }

    public function onKeyDown(key:uint):void {
        _tf.text = key.toString();

        var tFormat:TextFormat = new TextFormat();
        tFormat.size = 100;
        tFormat.color = 0x455A64;
        _tf.setTextFormat(tFormat);
    }

    public function onRegister():void {
    }

    public function onDestroy():void {
    }

    public function getSkin():DisplayObject {
        return _skin;
    }
}
}
