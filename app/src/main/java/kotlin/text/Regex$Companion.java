package kotlin.text;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: Regex.kt */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u0007¨\u0006\f"}, d2 = {"Lkotlin/text/Regex$Companion;", "", "()V", "ensureUnicodeCase", "", "flags", "escape", "", "literal", "escapeReplacement", "fromLiteral", "Lkotlin/text/Regex;", "kotlin-stdlib"}, k = 1, mv = {1, 1, 10})
public final class Regex$Companion {
    private final int ensureUnicodeCase(int flags) {
        return (flags & 2) != 0 ? flags | 64 : flags;
    }

    private Regex$Companion() {
    }

    public /* synthetic */ Regex$Companion(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static final /* synthetic */ int access$ensureUnicodeCase(Regex$Companion regex$Companion, int i) {
        return regex$Companion.ensureUnicodeCase(i);
    }

    @NotNull
    public final Regex fromLiteral(@NotNull String literal) {
        Intrinsics.checkParameterIsNotNull(literal, "literal");
        return new Regex(literal, RegexOption.LITERAL);
    }

    @NotNull
    public final String escape(@NotNull String literal) {
        Intrinsics.checkParameterIsNotNull(literal, "literal");
        String strQuote = Pattern.quote(literal);
        Intrinsics.checkExpressionValueIsNotNull(strQuote, "Pattern.quote(literal)");
        return strQuote;
    }

    @NotNull
    public final String escapeReplacement(@NotNull String literal) {
        Intrinsics.checkParameterIsNotNull(literal, "literal");
        String strQuoteReplacement = Matcher.quoteReplacement(literal);
        Intrinsics.checkExpressionValueIsNotNull(strQuoteReplacement, "Matcher.quoteReplacement(literal)");
        return strQuoteReplacement;
    }
}
