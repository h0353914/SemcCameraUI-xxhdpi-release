package com.sonyericsson.android.camera;

import android.content.DialogInterface;
import android.content.DialogInterface$OnKeyListener;
import android.view.KeyEvent;

class SetupWizardActivity$KeyEventKiller implements DialogInterface$OnKeyListener {
    @Override // android.content.DialogInterface$OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        return i == 27 || i == 80 || i == 82;
    }

    private SetupWizardActivity$KeyEventKiller() {
    }

    /* synthetic */ SetupWizardActivity$KeyEventKiller(SetupWizardActivity$1 setupWizardActivity$1) {
        this();
    }
}
