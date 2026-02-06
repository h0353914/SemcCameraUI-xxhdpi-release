package android.support.v4.app;

import android.app.Notification$BigTextStyle;
import android.os.Build$VERSION;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;

public class NotificationCompat$BigTextStyle extends NotificationCompat$Style {
    private CharSequence mBigText;

    public NotificationCompat$BigTextStyle() {
    }

    public NotificationCompat$BigTextStyle(NotificationCompat$Builder notificationCompat$Builder) {
        setBuilder(notificationCompat$Builder);
    }

    public NotificationCompat$BigTextStyle setBigContentTitle(CharSequence charSequence) {
        this.mBigContentTitle = NotificationCompat$Builder.limitCharSequenceLength(charSequence);
        return this;
    }

    public NotificationCompat$BigTextStyle setSummaryText(CharSequence charSequence) {
        this.mSummaryText = NotificationCompat$Builder.limitCharSequenceLength(charSequence);
        this.mSummaryTextSet = true;
        return this;
    }

    public NotificationCompat$BigTextStyle bigText(CharSequence charSequence) {
        this.mBigText = NotificationCompat$Builder.limitCharSequenceLength(charSequence);
        return this;
    }

    @Override // android.support.v4.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        if (Build$VERSION.SDK_INT >= 16) {
            Notification$BigTextStyle notification$BigTextStyleBigText = new Notification$BigTextStyle(notificationBuilderWithBuilderAccessor.getBuilder()).setBigContentTitle(this.mBigContentTitle).bigText(this.mBigText);
            if (this.mSummaryTextSet) {
                notification$BigTextStyleBigText.setSummaryText(this.mSummaryText);
            }
        }
    }
}
