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

class KeyTesterDelegate extends Ui.BehaviorDelegate {

    var parentView;

    function initialize( view ) {
        BehaviorDelegate.initialize();

        parentView = view ;
    }

    function onKey(event) {
        var key = event.getKey();
        parentView.setKeyPressed(key);
        Ui.requestUpdate();
        return true;
    }

}