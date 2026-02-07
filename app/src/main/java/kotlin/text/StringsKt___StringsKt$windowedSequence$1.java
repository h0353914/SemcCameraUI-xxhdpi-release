package kotlin.text;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: _Strings.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\r\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 1, 10})
final class StringsKt___StringsKt$windowedSequence$1 extends Lambda implements Function1<CharSequence, String> {
    public static final StringsKt___StringsKt$windowedSequence$1 INSTANCE = new StringsKt___StringsKt$windowedSequence$1();

    StringsKt___StringsKt$windowedSequence$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ String invoke(CharSequence charSequence) {
        return invoke2(charSequence);
    }

    @NotNull
    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final String invoke2(@NotNull CharSequence it) {
        Intrinsics.checkParameterIsNotNull(it, "it");
        return it.toString();
    }
}
