// This file is part of KeyTester

// KeyTester is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// KeyTester is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with KeyTester.  If not, see <http://www.gnu.org/licenses/>.

using Toybox.WatchUi as Ui;
using Toybox.Graphics as Gfx;

class KeyTesterView extends Ui.View {

    var keyPressed = -2;

    function initialize() {
        View.initialize();
    }

    //! Load your resources here
    function onLayout(dc) {
        setLayout(Rez.Layouts.MainLayout(dc));
    }

    //! Called when this View is brought to the foreground. Restore
    //! the state of this View and prepare it to be shown. This includes
    //! loading resources into memory.
    function onShow() {
    }

    //! Update the view
    function onUpdate(dc) {
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);

        if (keyPressed != -2) {
            dc.setColor(Gfx.COLOR_BLUE, Gfx.COLOR_BLACK);
            dc.drawText(20, 50, Gfx.FONT_MEDIUM, "Key Pressed", Gfx.TEXT_JUSTIFY_LEFT);
            dc.drawText(25, 80, Gfx.FONT_MEDIUM, keyPressed, Gfx.TEXT_JUSTIFY_LEFT);
        }
    }

    //! Called when this View is removed from the screen. Save the
    //! state of this View here. This includes freeing resources from
    //! memory.
    function onHide() {
    }

    function setKeyPressed(key) {
        keyPressed = key;
    }

}
