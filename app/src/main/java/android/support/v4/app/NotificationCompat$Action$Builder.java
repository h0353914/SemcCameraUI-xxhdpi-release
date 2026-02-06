package android.support.v4.app;

import android.app.PendingIntent;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;

public final class NotificationCompat$Action$Builder {
    private boolean mAllowGeneratedReplies;
    private final Bundle mExtras;
    private final int mIcon;
    private final PendingIntent mIntent;
    private ArrayList<RemoteInput> mRemoteInputs;
    private int mSemanticAction;
    private boolean mShowsUserInterface;
    private final CharSequence mTitle;

    public NotificationCompat$Action$Builder(int i, CharSequence charSequence, PendingIntent pendingIntent) {
        this(i, charSequence, pendingIntent, new Bundle(), null, true, 0, true);
    }

    public NotificationCompat$Action$Builder(NotificationCompat$Action notificationCompat$Action) {
        this(notificationCompat$Action.icon, notificationCompat$Action.title, notificationCompat$Action.actionIntent, new Bundle(notificationCompat$Action.mExtras), notificationCompat$Action.getRemoteInputs(), notificationCompat$Action.getAllowGeneratedReplies(), notificationCompat$Action.getSemanticAction(), notificationCompat$Action.mShowsUserInterface);
    }

    private NotificationCompat$Action$Builder(int i, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, RemoteInput[] remoteInputArr, boolean z, int i2, boolean z2) {
        this.mAllowGeneratedReplies = true;
        this.mShowsUserInterface = true;
        this.mIcon = i;
        this.mTitle = NotificationCompat$Builder.limitCharSequenceLength(charSequence);
        this.mIntent = pendingIntent;
        this.mExtras = bundle;
        this.mRemoteInputs = remoteInputArr == null ? null : new ArrayList<>(Arrays.asList(remoteInputArr));
        this.mAllowGeneratedReplies = z;
        this.mSemanticAction = i2;
        this.mShowsUserInterface = z2;
    }

    public NotificationCompat$Action$Builder addExtras(Bundle bundle) {
        if (bundle != null) {
            this.mExtras.putAll(bundle);
        }
        return this;
    }

    public Bundle getExtras() {
        return this.mExtras;
    }

    public NotificationCompat$Action$Builder addRemoteInput(RemoteInput remoteInput) {
        if (this.mRemoteInputs == null) {
            this.mRemoteInputs = new ArrayList<>();
        }
        this.mRemoteInputs.add(remoteInput);
        return this;
    }

    public NotificationCompat$Action$Builder setAllowGeneratedReplies(boolean z) {
        this.mAllowGeneratedReplies = z;
        return this;
    }

    public NotificationCompat$Action$Builder setSemanticAction(int i) {
        this.mSemanticAction = i;
        return this;
    }

    public NotificationCompat$Action$Builder setShowsUserInterface(boolean z) {
        this.mShowsUserInterface = z;
        return this;
    }

    public NotificationCompat$Action$Builder extend(NotificationCompat$Action$Extender notificationCompat$Action$Extender) {
        notificationCompat$Action$Extender.extend(this);
        return this;
    }

    public NotificationCompat$Action build() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (this.mRemoteInputs != null) {
            for (RemoteInput remoteInput : this.mRemoteInputs) {
                if (remoteInput.isDataOnly()) {
                    arrayList.add(remoteInput);
                } else {
                    arrayList2.add(remoteInput);
                }
            }
        }
        return new NotificationCompat$Action(this.mIcon, this.mTitle, this.mIntent, this.mExtras, arrayList2.isEmpty() ? null : (RemoteInput[]) arrayList2.toArray(new RemoteInput[arrayList2.size()]), arrayList.isEmpty() ? null : (RemoteInput[]) arrayList.toArray(new RemoteInput[arrayList.size()]), this.mAllowGeneratedReplies, this.mSemanticAction, this.mShowsUserInterface);
    }
}
