package android.support.v7.widget;

import java.util.Arrays;

class StaggeredGridLayoutManager$AnchorInfo {
    boolean mInvalidateOffsets;
    boolean mLayoutFromEnd;
    int mOffset;
    int mPosition;
    int[] mSpanReferenceLines;
    boolean mValid;
    final /* synthetic */ StaggeredGridLayoutManager this$0;

    StaggeredGridLayoutManager$AnchorInfo(StaggeredGridLayoutManager staggeredGridLayoutManager) {
        this.this$0 = staggeredGridLayoutManager;
        reset();
    }

    void reset() {
        this.mPosition = -1;
        this.mOffset = Integer.MIN_VALUE;
        this.mLayoutFromEnd = false;
        this.mInvalidateOffsets = false;
        this.mValid = false;
        if (this.mSpanReferenceLines != null) {
            Arrays.fill(this.mSpanReferenceLines, -1);
        }
    }

    void saveSpanReferenceLines(StaggeredGridLayoutManager$Span[] staggeredGridLayoutManager$SpanArr) {
        int length = staggeredGridLayoutManager$SpanArr.length;
        if (this.mSpanReferenceLines == null || this.mSpanReferenceLines.length < length) {
            this.mSpanReferenceLines = new int[this.this$0.mSpans.length];
        }
        for (int i = 0; i < length; i++) {
            this.mSpanReferenceLines[i] = staggeredGridLayoutManager$SpanArr[i].getStartLine(Integer.MIN_VALUE);
        }
    }

    void assignCoordinateFromPadding() {
        this.mOffset = this.mLayoutFromEnd ? this.this$0.mPrimaryOrientation.getEndAfterPadding() : this.this$0.mPrimaryOrientation.getStartAfterPadding();
    }

    void assignCoordinateFromPadding(int i) {
        if (this.mLayoutFromEnd) {
            this.mOffset = this.this$0.mPrimaryOrientation.getEndAfterPadding() - i;
        } else {
            this.mOffset = this.this$0.mPrimaryOrientation.getStartAfterPadding() + i;
        }
    }
}
