package android.support.v4.print;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.print.PageRange;
import android.print.PrintAttributes;
import android.print.PrintDocumentAdapter;
import android.print.PrintDocumentAdapter$LayoutResultCallback;
import android.print.PrintDocumentAdapter$WriteResultCallback;
import android.print.PrintDocumentInfo$Builder;
import android.support.annotation.RequiresApi;

@RequiresApi(19)
class PrintHelper$PrintUriAdapter extends PrintDocumentAdapter {
    PrintAttributes mAttributes;
    Bitmap mBitmap = null;
    final PrintHelper$OnPrintFinishCallback mCallback;
    final int mFittingMode;
    final Uri mImageFile;
    final String mJobName;
    AsyncTask<Uri, Boolean, Bitmap> mLoadBitmap;
    final /* synthetic */ PrintHelper this$0;

    PrintHelper$PrintUriAdapter(PrintHelper printHelper, String str, Uri uri, PrintHelper$OnPrintFinishCallback printHelper$OnPrintFinishCallback, int i) {
        this.this$0 = printHelper;
        this.mJobName = str;
        this.mImageFile = uri;
        this.mCallback = printHelper$OnPrintFinishCallback;
        this.mFittingMode = i;
    }

    @Override // android.print.PrintDocumentAdapter
    public void onLayout(PrintAttributes printAttributes, PrintAttributes printAttributes2, CancellationSignal cancellationSignal, PrintDocumentAdapter$LayoutResultCallback printDocumentAdapter$LayoutResultCallback, Bundle bundle) {
        synchronized (this) {
            this.mAttributes = printAttributes2;
        }
        if (cancellationSignal.isCanceled()) {
            printDocumentAdapter$LayoutResultCallback.onLayoutCancelled();
        } else if (this.mBitmap != null) {
            printDocumentAdapter$LayoutResultCallback.onLayoutFinished(new PrintDocumentInfo$Builder(this.mJobName).setContentType(1).setPageCount(1).build(), true ^ printAttributes2.equals(printAttributes));
        } else {
            this.mLoadBitmap = new PrintHelper$PrintUriAdapter$1(this, cancellationSignal, printAttributes2, printAttributes, printDocumentAdapter$LayoutResultCallback).execute(new Uri[0]);
        }
    }

    void cancelLoad() {
        synchronized (this.this$0.mLock) {
            if (this.this$0.mDecodeOptions != null) {
                if (Build$VERSION.SDK_INT < 24) {
                    this.this$0.mDecodeOptions.requestCancelDecode();
                }
                this.this$0.mDecodeOptions = null;
            }
        }
    }

    @Override // android.print.PrintDocumentAdapter
    public void onFinish() {
        super.onFinish();
        cancelLoad();
        if (this.mLoadBitmap != null) {
            this.mLoadBitmap.cancel(true);
        }
        if (this.mCallback != null) {
            this.mCallback.onFinish();
        }
        if (this.mBitmap != null) {
            this.mBitmap.recycle();
            this.mBitmap = null;
        }
    }

    @Override // android.print.PrintDocumentAdapter
    public void onWrite(PageRange[] pageRangeArr, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, PrintDocumentAdapter$WriteResultCallback printDocumentAdapter$WriteResultCallback) {
        this.this$0.writeBitmap(this.mAttributes, this.mFittingMode, this.mBitmap, parcelFileDescriptor, cancellationSignal, printDocumentAdapter$WriteResultCallback);
    }
}
