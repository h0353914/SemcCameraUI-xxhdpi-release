package com.sonyericsson.android.camera.view.messagedialog;

import android.content.DialogInterface;
import android.content.DialogInterface$OnKeyListener;
import android.view.KeyEvent;

protected class MessageDialogBuilder$KeyEventKiller implements DialogInterface$OnKeyListener {
    @Override // android.content.DialogInterface$OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        return i == 27 || i == 80 || i == 82;
    }

    protected MessageDialogBuilder$KeyEventKiller() {
    }
}
