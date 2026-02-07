package android.support.v4.content;

import android.net.Uri;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
interface FileProvider$PathStrategy {
    File getFileForUri(Uri uri);

    Uri getUriForFile(File file);
}
