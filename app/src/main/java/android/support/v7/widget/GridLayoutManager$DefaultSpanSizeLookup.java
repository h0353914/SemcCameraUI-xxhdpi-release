package android.support.v7.widget;

public final class GridLayoutManager$DefaultSpanSizeLookup extends GridLayoutManager$SpanSizeLookup {
    @Override // android.support.v7.widget.GridLayoutManager$SpanSizeLookup
    public int getSpanSize(int i) {
        return 1;
    }

    @Override // android.support.v7.widget.GridLayoutManager$SpanSizeLookup
    public int getSpanIndex(int i, int i2) {
        return i % i2;
    }
}
