package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build$VERSION;
import android.text.Html;
import android.text.Spanned;
import android.util.Log;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ShareCompat$IntentReader {
    private static final String TAG = "IntentReader";
    private Activity mActivity;
    private ComponentName mCallingActivity;
    private String mCallingPackage;
    private Intent mIntent;
    private ArrayList<Uri> mStreams;

    public static ShareCompat$IntentReader from(Activity activity) {
        return new ShareCompat$IntentReader(activity);
    }

    private ShareCompat$IntentReader(Activity activity) {
        this.mActivity = activity;
        this.mIntent = activity.getIntent();
        this.mCallingPackage = ShareCompat.getCallingPackage(activity);
        this.mCallingActivity = ShareCompat.getCallingActivity(activity);
    }

    public boolean isShareIntent() {
        String action = this.mIntent.getAction();
        return "android.intent.action.SEND".equals(action) || "android.intent.action.SEND_MULTIPLE".equals(action);
    }

    public boolean isSingleShare() {
        return "android.intent.action.SEND".equals(this.mIntent.getAction());
    }

    public boolean isMultipleShare() {
        return "android.intent.action.SEND_MULTIPLE".equals(this.mIntent.getAction());
    }

    public String getType() {
        return this.mIntent.getType();
    }

    public CharSequence getText() {
        return this.mIntent.getCharSequenceExtra("android.intent.extra.TEXT");
    }

    public String getHtmlText() {
        String stringExtra = this.mIntent.getStringExtra("android.intent.extra.HTML_TEXT");
        if (stringExtra != null) {
            return stringExtra;
        }
        CharSequence text = getText();
        if (text instanceof Spanned) {
            return Html.toHtml((Spanned) text);
        }
        if (text == null) {
            return stringExtra;
        }
        if (Build$VERSION.SDK_INT >= 16) {
            return Html.escapeHtml(text);
        }
        StringBuilder sb = new StringBuilder();
        withinStyle(sb, text, 0, text.length());
        return sb.toString();
    }

    private static void withinStyle(StringBuilder sb, CharSequence charSequence, int i, int i2) {
        while (i < i2) {
            char cCharAt = charSequence.charAt(i);
            if (cCharAt == '<') {
                sb.append("&lt;");
            } else if (cCharAt == '>') {
                sb.append("&gt;");
            } else if (cCharAt == '&') {
                sb.append("&amp;");
            } else if (cCharAt > '~' || cCharAt < ' ') {
                sb.append("&#" + ((int) cCharAt) + ";");
            } else if (cCharAt == ' ') {
                while (true) {
                    int i3 = i + 1;
                    if (i3 >= i2 || charSequence.charAt(i3) != ' ') {
                        break;
                    }
                    sb.append("&nbsp;");
                    i = i3;
                }
                sb.append(' ');
            } else {
                sb.append(cCharAt);
            }
            i++;
        }
    }

    public Uri getStream() {
        return (Uri) this.mIntent.getParcelableExtra("android.intent.extra.STREAM");
    }

    public Uri getStream(int i) {
        if (this.mStreams == null && isMultipleShare()) {
            this.mStreams = this.mIntent.getParcelableArrayListExtra("android.intent.extra.STREAM");
        }
        if (this.mStreams != null) {
            return this.mStreams.get(i);
        }
        if (i == 0) {
            return (Uri) this.mIntent.getParcelableExtra("android.intent.extra.STREAM");
        }
        throw new IndexOutOfBoundsException("Stream items available: " + getStreamCount() + " index requested: " + i);
    }

    public int getStreamCount() {
        if (this.mStreams == null && isMultipleShare()) {
            this.mStreams = this.mIntent.getParcelableArrayListExtra("android.intent.extra.STREAM");
        }
        if (this.mStreams != null) {
            return this.mStreams.size();
        }
        return this.mIntent.hasExtra("android.intent.extra.STREAM") ? 1 : 0;
    }

    public String[] getEmailTo() {
        return this.mIntent.getStringArrayExtra("android.intent.extra.EMAIL");
    }

    public String[] getEmailCc() {
        return this.mIntent.getStringArrayExtra("android.intent.extra.CC");
    }

    public String[] getEmailBcc() {
        return this.mIntent.getStringArrayExtra("android.intent.extra.BCC");
    }

    public String getSubject() {
        return this.mIntent.getStringExtra("android.intent.extra.SUBJECT");
    }

    public String getCallingPackage() {
        return this.mCallingPackage;
    }

    public ComponentName getCallingActivity() {
        return this.mCallingActivity;
    }

    public Drawable getCallingActivityIcon() {
        if (this.mCallingActivity == null) {
            return null;
        }
        try {
            return this.mActivity.getPackageManager().getActivityIcon(this.mCallingActivity);
        } catch (PackageManager$NameNotFoundException e) {
            Log.e("IntentReader", "Could not retrieve icon for calling activity", e);
            return null;
        }
    }

    public Drawable getCallingApplicationIcon() {
        if (this.mCallingPackage == null) {
            return null;
        }
        try {
            return this.mActivity.getPackageManager().getApplicationIcon(this.mCallingPackage);
        } catch (PackageManager$NameNotFoundException e) {
            Log.e("IntentReader", "Could not retrieve icon for calling application", e);
            return null;
        }
    }

    public CharSequence getCallingApplicationLabel() {
        if (this.mCallingPackage == null) {
            return null;
        }
        PackageManager packageManager = this.mActivity.getPackageManager();
        try {
            return packageManager.getApplicationLabel(packageManager.getApplicationInfo(this.mCallingPackage, 0));
        } catch (PackageManager$NameNotFoundException e) {
            Log.e("IntentReader", "Could not retrieve label for calling application", e);
            return null;
        }
    }
}
