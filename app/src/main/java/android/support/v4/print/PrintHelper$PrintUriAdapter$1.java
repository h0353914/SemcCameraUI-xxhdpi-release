package android.support.v4.print;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.CancellationSignal;
import android.print.PrintAttributes;
import android.print.PrintAttributes$MediaSize;
import android.print.PrintDocumentAdapter$LayoutResultCallback;
import android.print.PrintDocumentInfo$Builder;
import java.io.FileNotFoundException;

class PrintHelper$PrintUriAdapter$1 extends AsyncTask<Uri, Boolean, Bitmap> {
    final /* synthetic */ PrintHelper$PrintUriAdapter this$1;
    final /* synthetic */ CancellationSignal val$cancellationSignal;
    final /* synthetic */ PrintDocumentAdapter$LayoutResultCallback val$layoutResultCallback;
    final /* synthetic */ PrintAttributes val$newPrintAttributes;
    final /* synthetic */ PrintAttributes val$oldPrintAttributes;

    PrintHelper$PrintUriAdapter$1(PrintHelper$PrintUriAdapter printHelper$PrintUriAdapter, CancellationSignal cancellationSignal, PrintAttributes printAttributes, PrintAttributes printAttributes2, PrintDocumentAdapter$LayoutResultCallback printDocumentAdapter$LayoutResultCallback) {
        this.this$1 = printHelper$PrintUriAdapter;
        this.val$cancellationSignal = cancellationSignal;
        this.val$newPrintAttributes = printAttributes;
        this.val$oldPrintAttributes = printAttributes2;
        this.val$layoutResultCallback = printDocumentAdapter$LayoutResultCallback;
    }

    @Override // android.os.AsyncTask
    protected /* bridge */ /* synthetic */ Bitmap doInBackground(Uri[] uriArr) {
        return doInBackground2(uriArr);
    }

    @Override // android.os.AsyncTask
    protected /* bridge */ /* synthetic */ void onCancelled(Bitmap bitmap) {
        onCancelled2(bitmap);
    }

    @Override // android.os.AsyncTask
    protected /* bridge */ /* synthetic */ void onPostExecute(Bitmap bitmap) {
        onPostExecute2(bitmap);
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        this.val$cancellationSignal.setOnCancelListener(new PrintHelper$PrintUriAdapter$1$1(this));
    }

    /* JADX INFO: renamed from: doInBackground, reason: avoid collision after fix types in other method */
    protected Bitmap doInBackground2(Uri... uriArr) {
        try {
            return this.this$1.this$0.loadConstrainedBitmap(this.this$1.mImageFile);
        } catch (FileNotFoundException unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: onPostExecute, reason: avoid collision after fix types in other method */
    protected void onPostExecute2(Bitmap bitmap) {
        PrintAttributes$MediaSize mediaSize;
        super.onPostExecute(bitmap);
        if (bitmap != null && (!PrintHelper.PRINT_ACTIVITY_RESPECTS_ORIENTATION || this.this$1.this$0.mOrientation == 0)) {
            synchronized (this) {
                mediaSize = this.this$1.mAttributes.getMediaSize();
            }
            if (mediaSize != null && mediaSize.isPortrait() != PrintHelper.isPortrait(bitmap)) {
                Matrix matrix = new Matrix();
                matrix.postRotate(90.0f);
                bitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            }
        }
        this.this$1.mBitmap = bitmap;
        if (bitmap != null) {
            this.val$layoutResultCallback.onLayoutFinished(new PrintDocumentInfo$Builder(this.this$1.mJobName).setContentType(1).setPageCount(1).build(), true ^ this.val$newPrintAttributes.equals(this.val$oldPrintAttributes));
        } else {
            this.val$layoutResultCallback.onLayoutFailed(null);
        }
        this.this$1.mLoadBitmap = null;
    }

    /* JADX INFO: renamed from: onCancelled, reason: avoid collision after fix types in other method */
    protected void onCancelled2(Bitmap bitmap) {
        this.val$layoutResultCallback.onLayoutCancelled();
        this.this$1.mLoadBitmap = null;
    }
}
