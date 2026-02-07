package android.support.v4.provider;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class FontsContractCompat$3 implements SelfDestructiveThread$ReplyCallback<FontsContractCompat$TypefaceResult> {
    final /* synthetic */ String val$id;

    FontsContractCompat$3(String str) {
        this.val$id = str;
    }

    @Override // android.support.v4.provider.SelfDestructiveThread$ReplyCallback
    public /* bridge */ /* synthetic */ void onReply(FontsContractCompat$TypefaceResult fontsContractCompat$TypefaceResult) {
        onReply2(fontsContractCompat$TypefaceResult);
    }

    /* JADX INFO: renamed from: onReply, reason: avoid collision after fix types in other method */
    public void onReply2(FontsContractCompat$TypefaceResult fontsContractCompat$TypefaceResult) {
        synchronized (FontsContractCompat.sLock) {
            ArrayList<SelfDestructiveThread$ReplyCallback<FontsContractCompat$TypefaceResult>> arrayList = FontsContractCompat.sPendingReplies.get(this.val$id);
            if (arrayList == null) {
                return;
            }
            FontsContractCompat.sPendingReplies.remove(this.val$id);
            for (int i = 0; i < arrayList.size(); i++) {
                arrayList.get(i).onReply(fontsContractCompat$TypefaceResult);
            }
        }
    }
}
