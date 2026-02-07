package android.support.v7.app;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
final class AlertController$ButtonHandler extends Handler {
    private static final int MSG_DISMISS_DIALOG = 1;
    private WeakReference<DialogInterface> mDialog;

    public AlertController$ButtonHandler(DialogInterface dialogInterface) {
        this.mDialog = new WeakReference<>(dialogInterface);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        if (i != 1) {
            switch (i) {
                case -3:
                case -2:
                case -1:
                    ((DialogInterface$OnClickListener) message.obj).onClick(this.mDialog.get(), message.what);
                    break;
            }
        }
        ((DialogInterface) message.obj).dismiss();
    }
}
