package android.support.v7.app;

import android.os.Message;
import android.view.View;
import android.view.View$OnClickListener;

class AlertController$1 implements View$OnClickListener {
    final /* synthetic */ AlertController this$0;

    AlertController$1(AlertController alertController) {
        this.this$0 = alertController;
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        Message messageObtain;
        if (view == this.this$0.mButtonPositive && this.this$0.mButtonPositiveMessage != null) {
            messageObtain = Message.obtain(this.this$0.mButtonPositiveMessage);
        } else if (view == this.this$0.mButtonNegative && this.this$0.mButtonNegativeMessage != null) {
            messageObtain = Message.obtain(this.this$0.mButtonNegativeMessage);
        } else {
            messageObtain = (view != this.this$0.mButtonNeutral || this.this$0.mButtonNeutralMessage == null) ? null : Message.obtain(this.this$0.mButtonNeutralMessage);
        }
        if (messageObtain != null) {
            messageObtain.sendToTarget();
        }
        this.this$0.mHandler.obtainMessage(1, this.this$0.mDialog).sendToTarget();
    }
}
