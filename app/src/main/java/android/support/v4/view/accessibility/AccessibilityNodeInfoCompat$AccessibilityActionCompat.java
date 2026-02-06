package android.support.v4.view.accessibility;

import android.os.Build$VERSION;
import android.view.accessibility.AccessibilityNodeInfo$AccessibilityAction;

public class AccessibilityNodeInfoCompat$AccessibilityActionCompat {
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_CONTEXT_CLICK;
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_HIDE_TOOLTIP;
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_MOVE_WINDOW;
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_SCROLL_DOWN;
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_SCROLL_LEFT;
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_SCROLL_RIGHT;
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_SCROLL_TO_POSITION;
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_SCROLL_UP;
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_SET_PROGRESS;
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_SHOW_ON_SCREEN;
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_SHOW_TOOLTIP;
    final Object mAction;
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_FOCUS = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(1, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_CLEAR_FOCUS = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(2, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_SELECT = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(4, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_CLEAR_SELECTION = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(8, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_CLICK = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(16, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_LONG_CLICK = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(32, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_ACCESSIBILITY_FOCUS = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(64, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_CLEAR_ACCESSIBILITY_FOCUS = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(128, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_NEXT_AT_MOVEMENT_GRANULARITY = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(256, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(512, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_NEXT_HTML_ELEMENT = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(1024, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_PREVIOUS_HTML_ELEMENT = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(2048, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_SCROLL_FORWARD = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(4096, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_SCROLL_BACKWARD = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(8192, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_COPY = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(16384, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_PASTE = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(32768, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_CUT = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(65536, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_SET_SELECTION = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(131072, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_EXPAND = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(262144, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_COLLAPSE = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(524288, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_DISMISS = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(1048576, null);
    public static final AccessibilityNodeInfoCompat$AccessibilityActionCompat ACTION_SET_TEXT = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(2097152, null);

    static {
        ACTION_SHOW_ON_SCREEN = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(Build$VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo$AccessibilityAction.ACTION_SHOW_ON_SCREEN : null);
        ACTION_SCROLL_TO_POSITION = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(Build$VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo$AccessibilityAction.ACTION_SCROLL_TO_POSITION : null);
        ACTION_SCROLL_UP = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(Build$VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo$AccessibilityAction.ACTION_SCROLL_UP : null);
        ACTION_SCROLL_LEFT = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(Build$VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo$AccessibilityAction.ACTION_SCROLL_LEFT : null);
        ACTION_SCROLL_DOWN = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(Build$VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo$AccessibilityAction.ACTION_SCROLL_DOWN : null);
        ACTION_SCROLL_RIGHT = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(Build$VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo$AccessibilityAction.ACTION_SCROLL_RIGHT : null);
        ACTION_CONTEXT_CLICK = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(Build$VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo$AccessibilityAction.ACTION_CONTEXT_CLICK : null);
        ACTION_SET_PROGRESS = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(Build$VERSION.SDK_INT >= 24 ? AccessibilityNodeInfo$AccessibilityAction.ACTION_SET_PROGRESS : null);
        ACTION_MOVE_WINDOW = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(Build$VERSION.SDK_INT >= 26 ? AccessibilityNodeInfo$AccessibilityAction.ACTION_MOVE_WINDOW : null);
        ACTION_SHOW_TOOLTIP = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(Build$VERSION.SDK_INT >= 28 ? AccessibilityNodeInfo$AccessibilityAction.ACTION_SHOW_TOOLTIP : null);
        ACTION_HIDE_TOOLTIP = new AccessibilityNodeInfoCompat$AccessibilityActionCompat(Build$VERSION.SDK_INT >= 28 ? AccessibilityNodeInfo$AccessibilityAction.ACTION_HIDE_TOOLTIP : null);
    }

    public AccessibilityNodeInfoCompat$AccessibilityActionCompat(int i, CharSequence charSequence) {
        this(Build$VERSION.SDK_INT >= 21 ? new AccessibilityNodeInfo$AccessibilityAction(i, charSequence) : null);
    }

    AccessibilityNodeInfoCompat$AccessibilityActionCompat(Object obj) {
        this.mAction = obj;
    }

    public int getId() {
        if (Build$VERSION.SDK_INT >= 21) {
            return ((AccessibilityNodeInfo$AccessibilityAction) this.mAction).getId();
        }
        return 0;
    }

    public CharSequence getLabel() {
        if (Build$VERSION.SDK_INT >= 21) {
            return ((AccessibilityNodeInfo$AccessibilityAction) this.mAction).getLabel();
        }
        return null;
    }
}
