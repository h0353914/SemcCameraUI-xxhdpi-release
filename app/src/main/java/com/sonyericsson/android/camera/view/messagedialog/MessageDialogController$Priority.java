package com.sonyericsson.android.camera.view.messagedialog;

enum MessageDialogController$Priority {
    IMMEDIATELY(0),
    NORMAL(1),
    LOW(2);

    protected final int priority;

    MessageDialogController$Priority(int i) {
        this.priority = i;
    }
}
