package android.support.v4.app;

import android.app.Notification$InboxStyle;
import android.os.Build$VERSION;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import java.util.ArrayList;
import java.util.Iterator;

public class NotificationCompat$InboxStyle extends NotificationCompat$Style {
    private ArrayList<CharSequence> mTexts = new ArrayList<>();

    public NotificationCompat$InboxStyle() {
    }

    public NotificationCompat$InboxStyle(NotificationCompat$Builder notificationCompat$Builder) {
        setBuilder(notificationCompat$Builder);
    }

    public NotificationCompat$InboxStyle setBigContentTitle(CharSequence charSequence) {
        this.mBigContentTitle = NotificationCompat$Builder.limitCharSequenceLength(charSequence);
        return this;
    }

    public NotificationCompat$InboxStyle setSummaryText(CharSequence charSequence) {
        this.mSummaryText = NotificationCompat$Builder.limitCharSequenceLength(charSequence);
        this.mSummaryTextSet = true;
        return this;
    }

    public NotificationCompat$InboxStyle addLine(CharSequence charSequence) {
        this.mTexts.add(NotificationCompat$Builder.limitCharSequenceLength(charSequence));
        return this;
    }

    @Override // android.support.v4.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        if (Build$VERSION.SDK_INT >= 16) {
            Notification$InboxStyle bigContentTitle = new Notification$InboxStyle(notificationBuilderWithBuilderAccessor.getBuilder()).setBigContentTitle(this.mBigContentTitle);
            if (this.mSummaryTextSet) {
                bigContentTitle.setSummaryText(this.mSummaryText);
            }
            Iterator<CharSequence> it = this.mTexts.iterator();
            while (it.hasNext()) {
                bigContentTitle.addLine(it.next());
            }
        }
    }
}
