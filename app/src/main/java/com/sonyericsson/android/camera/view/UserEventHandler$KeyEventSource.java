package com.sonyericsson.android.camera.view;

class UserEventHandler$KeyEventSource implements UserEventHandler$EventSource {
    private static UserEventHandler$KeyEventSource CAMERA = from(27);
    private static UserEventHandler$KeyEventSource FOCUS = from(80);
    private final int mKeyCode;

    static /* synthetic */ UserEventHandler$KeyEventSource access$1800() {
        return FOCUS;
    }

    static /* synthetic */ UserEventHandler$KeyEventSource access$1900() {
        return CAMERA;
    }

    private UserEventHandler$KeyEventSource(int i) {
        this.mKeyCode = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.mKeyCode == ((UserEventHandler$KeyEventSource) obj).mKeyCode;
    }

    public int hashCode() {
        return this.mKeyCode;
    }

    public static UserEventHandler$KeyEventSource from(int i) {
        return new UserEventHandler$KeyEventSource(i);
    }
}
