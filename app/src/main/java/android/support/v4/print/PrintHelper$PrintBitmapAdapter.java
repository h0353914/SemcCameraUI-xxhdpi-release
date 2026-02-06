package android.support.v4.print;

import android.graphics.Bitmap;
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
class PrintHelper$PrintBitmapAdapter extends PrintDocumentAdapter {
    private PrintAttributes mAttributes;
    private final Bitmap mBitmap;
    private final PrintHelper$OnPrintFinishCallback mCallback;
    private final int mFittingMode;
    private final String mJobName;
    final /* synthetic */ PrintHelper this$0;

    PrintHelper$PrintBitmapAdapter(PrintHelper printHelper, String str, int i, Bitmap bitmap, PrintHelper$OnPrintFinishCallback printHelper$OnPrintFinishCallback) {
        this.this$0 = printHelper;
        this.mJobName = str;
        this.mFittingMode = i;
        this.mBitmap = bitmap;
        this.mCallback = printHelper$OnPrintFinishCallback;
    }

    @Override // android.print.PrintDocumentAdapter
    public void onLayout(PrintAttributes printAttributes, PrintAttributes printAttributes2, CancellationSignal cancellationSignal, PrintDocumentAdapter$LayoutResultCallback printDocumentAdapter$LayoutResultCallback, Bundle bundle) {
        this.mAttributes = printAttributes2;
        printDocumentAdapter$LayoutResultCallback.onLayoutFinished(new PrintDocumentInfo$Builder(this.mJobName).setContentType(1).setPageCount(1).build(), true ^ printAttributes2.equals(printAttributes));
    }

    @Override // android.print.PrintDocumentAdapter
    public void onWrite(PageRange[] pageRangeArr, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, PrintDocumentAdapter$WriteResultCallback printDocumentAdapter$WriteResultCallback) {
        this.this$0.writeBitmap(this.mAttributes, this.mFittingMode, this.mBitmap, parcelFileDescriptor, cancellationSignal, printDocumentAdapter$WriteResultCallback);
    }

    @Override // android.print.PrintDocumentAdapter
    public void onFinish() {
        if (this.mCallback != null) {
            this.mCallback.onFinish();
        }
    }
}
