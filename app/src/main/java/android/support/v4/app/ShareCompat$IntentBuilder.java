package android.support.v4.app;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.support.annotation.StringRes;
import android.text.Html;
import java.util.ArrayList;

public class ShareCompat$IntentBuilder {
    private Activity mActivity;
    private ArrayList<String> mBccAddresses;
    private ArrayList<String> mCcAddresses;
    private CharSequence mChooserTitle;
    private Intent mIntent = new Intent().setAction("android.intent.action.SEND");
    private ArrayList<Uri> mStreams;
    private ArrayList<String> mToAddresses;

    public static ShareCompat$IntentBuilder from(Activity activity) {
        return new ShareCompat$IntentBuilder(activity);
    }

    private ShareCompat$IntentBuilder(Activity activity) {
        this.mActivity = activity;
        this.mIntent.putExtra("android.support.v4.app.EXTRA_CALLING_PACKAGE", activity.getPackageName());
        this.mIntent.putExtra("android.support.v4.app.EXTRA_CALLING_ACTIVITY", activity.getComponentName());
        this.mIntent.addFlags(524288);
    }

    public Intent getIntent() {
        if (this.mToAddresses != null) {
            combineArrayExtra("android.intent.extra.EMAIL", this.mToAddresses);
            this.mToAddresses = null;
        }
        if (this.mCcAddresses != null) {
            combineArrayExtra("android.intent.extra.CC", this.mCcAddresses);
            this.mCcAddresses = null;
        }
        if (this.mBccAddresses != null) {
            combineArrayExtra("android.intent.extra.BCC", this.mBccAddresses);
            this.mBccAddresses = null;
        }
        boolean z = this.mStreams != null && this.mStreams.size() > 1;
        boolean zEquals = this.mIntent.getAction().equals("android.intent.action.SEND_MULTIPLE");
        if (!z && zEquals) {
            this.mIntent.setAction("android.intent.action.SEND");
            if (this.mStreams != null && !this.mStreams.isEmpty()) {
                this.mIntent.putExtra("android.intent.extra.STREAM", this.mStreams.get(0));
            } else {
                this.mIntent.removeExtra("android.intent.extra.STREAM");
            }
            this.mStreams = null;
        }
        if (z && !zEquals) {
            this.mIntent.setAction("android.intent.action.SEND_MULTIPLE");
            if (this.mStreams != null && !this.mStreams.isEmpty()) {
                this.mIntent.putParcelableArrayListExtra("android.intent.extra.STREAM", this.mStreams);
            } else {
                this.mIntent.removeExtra("android.intent.extra.STREAM");
            }
        }
        return this.mIntent;
    }

    Activity getActivity() {
        return this.mActivity;
    }

    private void combineArrayExtra(String str, ArrayList<String> arrayList) {
        String[] stringArrayExtra = this.mIntent.getStringArrayExtra(str);
        int length = stringArrayExtra != null ? stringArrayExtra.length : 0;
        String[] strArr = new String[arrayList.size() + length];
        arrayList.toArray(strArr);
        if (stringArrayExtra != null) {
            System.arraycopy(stringArrayExtra, 0, strArr, arrayList.size(), length);
        }
        this.mIntent.putExtra(str, strArr);
    }

    private void combineArrayExtra(String str, String[] strArr) {
        Intent intent = getIntent();
        String[] stringArrayExtra = intent.getStringArrayExtra(str);
        int length = stringArrayExtra != null ? stringArrayExtra.length : 0;
        String[] strArr2 = new String[strArr.length + length];
        if (stringArrayExtra != null) {
            System.arraycopy(stringArrayExtra, 0, strArr2, 0, length);
        }
        System.arraycopy(strArr, 0, strArr2, length, strArr.length);
        intent.putExtra(str, strArr2);
    }

    public Intent createChooserIntent() {
        return Intent.createChooser(getIntent(), this.mChooserTitle);
    }

    public void startChooser() {
        this.mActivity.startActivity(createChooserIntent());
    }

    public ShareCompat$IntentBuilder setChooserTitle(CharSequence charSequence) {
        this.mChooserTitle = charSequence;
        return this;
    }

    public ShareCompat$IntentBuilder setChooserTitle(@StringRes int i) {
        return setChooserTitle(this.mActivity.getText(i));
    }

    public ShareCompat$IntentBuilder setType(String str) {
        this.mIntent.setType(str);
        return this;
    }

    public ShareCompat$IntentBuilder setText(CharSequence charSequence) {
        this.mIntent.putExtra("android.intent.extra.TEXT", charSequence);
        return this;
    }

    public ShareCompat$IntentBuilder setHtmlText(String str) {
        this.mIntent.putExtra("android.intent.extra.HTML_TEXT", str);
        if (!this.mIntent.hasExtra("android.intent.extra.TEXT")) {
            setText(Html.fromHtml(str));
        }
        return this;
    }

    public ShareCompat$IntentBuilder setStream(Uri uri) {
        if (!this.mIntent.getAction().equals("android.intent.action.SEND")) {
            this.mIntent.setAction("android.intent.action.SEND");
        }
        this.mStreams = null;
        this.mIntent.putExtra("android.intent.extra.STREAM", uri);
        return this;
    }

    public ShareCompat$IntentBuilder addStream(Uri uri) {
        Uri uri2 = (Uri) this.mIntent.getParcelableExtra("android.intent.extra.STREAM");
        if (this.mStreams == null && uri2 == null) {
            return setStream(uri);
        }
        if (this.mStreams == null) {
            this.mStreams = new ArrayList<>();
        }
        if (uri2 != null) {
            this.mIntent.removeExtra("android.intent.extra.STREAM");
            this.mStreams.add(uri2);
        }
        this.mStreams.add(uri);
        return this;
    }

    public ShareCompat$IntentBuilder setEmailTo(String[] strArr) {
        if (this.mToAddresses != null) {
            this.mToAddresses = null;
        }
        this.mIntent.putExtra("android.intent.extra.EMAIL", strArr);
        return this;
    }

    public ShareCompat$IntentBuilder addEmailTo(String str) {
        if (this.mToAddresses == null) {
            this.mToAddresses = new ArrayList<>();
        }
        this.mToAddresses.add(str);
        return this;
    }

    public ShareCompat$IntentBuilder addEmailTo(String[] strArr) {
        combineArrayExtra("android.intent.extra.EMAIL", strArr);
        return this;
    }

    public ShareCompat$IntentBuilder setEmailCc(String[] strArr) {
        this.mIntent.putExtra("android.intent.extra.CC", strArr);
        return this;
    }

    public ShareCompat$IntentBuilder addEmailCc(String str) {
        if (this.mCcAddresses == null) {
            this.mCcAddresses = new ArrayList<>();
        }
        this.mCcAddresses.add(str);
        return this;
    }

    public ShareCompat$IntentBuilder addEmailCc(String[] strArr) {
        combineArrayExtra("android.intent.extra.CC", strArr);
        return this;
    }

    public ShareCompat$IntentBuilder setEmailBcc(String[] strArr) {
        this.mIntent.putExtra("android.intent.extra.BCC", strArr);
        return this;
    }

    public ShareCompat$IntentBuilder addEmailBcc(String str) {
        if (this.mBccAddresses == null) {
            this.mBccAddresses = new ArrayList<>();
        }
        this.mBccAddresses.add(str);
        return this;
    }

    public ShareCompat$IntentBuilder addEmailBcc(String[] strArr) {
        combineArrayExtra("android.intent.extra.BCC", strArr);
        return this;
    }

    public ShareCompat$IntentBuilder setSubject(String str) {
        this.mIntent.putExtra("android.intent.extra.SUBJECT", str);
        return this;
    }
}
