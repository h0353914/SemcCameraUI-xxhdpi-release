package kotlin.text;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: Regex.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 ,2\u00060\u0001j\u0002`\u0002:\u0002,-B\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005B\u0017\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bB\u001d\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\n¢\u0006\u0002\u0010\u000bB\u000f\b\u0001\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u001a\u001a\u00020\u001bJ\u001e\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00190\u001d2\u0006\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u001a\u001a\u00020\u001bJ\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0016\u001a\u00020\u0017J\u0011\u0010\u001f\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0086\u0004J\"\u0010 \u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00172\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00170\"J\u0016\u0010 \u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\u0004J\u0016\u0010$\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\u0004J\u001e\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00040&2\u0006\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010'\u001a\u00020\u001bJ\u0006\u0010(\u001a\u00020\rJ\b\u0010)\u001a\u00020\u0004H\u0016J\b\u0010*\u001a\u00020+H\u0002R\u0016\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\n8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006."}, d2 = {"Lkotlin/text/Regex;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "pattern", "", "(Ljava/lang/String;)V", "option", "Lkotlin/text/RegexOption;", "(Ljava/lang/String;Lkotlin/text/RegexOption;)V", "options", "", "(Ljava/lang/String;Ljava/util/Set;)V", "nativePattern", "Ljava/util/regex/Pattern;", "(Ljava/util/regex/Pattern;)V", "_options", "getOptions", "()Ljava/util/Set;", "getPattern", "()Ljava/lang/String;", "containsMatchIn", "", "input", "", "find", "Lkotlin/text/MatchResult;", "startIndex", "", "findAll", "Lkotlin/sequences/Sequence;", "matchEntire", "matches", "replace", "transform", "Lkotlin/Function1;", "replacement", "replaceFirst", "split", "", "limit", "toPattern", "toString", "writeReplace", "", "Companion", "Serialized", "kotlin-stdlib"}, k = 1, mv = {1, 1, 10})
public final class Regex implements Serializable {
    public static final Regex$Companion Companion = new Regex$Companion(null);
    private Set<? extends RegexOption> _options;
    private final Pattern nativePattern;

    @Nullable
    public static /* bridge */ /* synthetic */ MatchResult find$default(Regex regex, CharSequence charSequence, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return regex.find(charSequence, i);
    }

    @NotNull
    public static /* bridge */ /* synthetic */ Sequence findAll$default(Regex regex, CharSequence charSequence, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return regex.findAll(charSequence, i);
    }

    @NotNull
    public static /* bridge */ /* synthetic */ List split$default(Regex regex, CharSequence charSequence, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return regex.split(charSequence, i);
    }

    @PublishedApi
    public Regex(@NotNull Pattern nativePattern) {
        Intrinsics.checkParameterIsNotNull(nativePattern, "nativePattern");
        this.nativePattern = nativePattern;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Regex(@NotNull String pattern) {
        Intrinsics.checkParameterIsNotNull(pattern, "pattern");
        Pattern patternCompile = Pattern.compile(pattern);
        Intrinsics.checkExpressionValueIsNotNull(patternCompile, "Pattern.compile(pattern)");
        this(patternCompile);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Regex(@NotNull String pattern, @NotNull RegexOption option) {
        Intrinsics.checkParameterIsNotNull(pattern, "pattern");
        Intrinsics.checkParameterIsNotNull(option, "option");
        Pattern patternCompile = Pattern.compile(pattern, Regex$Companion.access$ensureUnicodeCase(Companion, option.getValue()));
        Intrinsics.checkExpressionValueIsNotNull(patternCompile, "Pattern.compile(pattern,…nicodeCase(option.value))");
        this(patternCompile);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Regex(@NotNull String pattern, @NotNull Set<? extends RegexOption> options) {
        Intrinsics.checkParameterIsNotNull(pattern, "pattern");
        Intrinsics.checkParameterIsNotNull(options, "options");
        Pattern patternCompile = Pattern.compile(pattern, Regex$Companion.access$ensureUnicodeCase(Companion, RegexKt.access$toInt(options)));
        Intrinsics.checkExpressionValueIsNotNull(patternCompile, "Pattern.compile(pattern,…odeCase(options.toInt()))");
        this(patternCompile);
    }

    @NotNull
    public final String getPattern() {
        String strPattern = this.nativePattern.pattern();
        Intrinsics.checkExpressionValueIsNotNull(strPattern, "nativePattern.pattern()");
        return strPattern;
    }

    @NotNull
    public final Set<RegexOption> getOptions() {
        Set set = this._options;
        if (set != null) {
            return set;
        }
        int iFlags = this.nativePattern.flags();
        EnumSet enumSetAllOf = EnumSet.allOf(RegexOption.class);
        CollectionsKt.retainAll(enumSetAllOf, new Regex$fromInt$$inlined$apply$lambda$1(iFlags));
        Set<RegexOption> setUnmodifiableSet = Collections.unmodifiableSet(enumSetAllOf);
        Intrinsics.checkExpressionValueIsNotNull(setUnmodifiableSet, "Collections.unmodifiable…mask == it.value }\n    })");
        this._options = setUnmodifiableSet;
        return setUnmodifiableSet;
    }

    public final boolean matches(@NotNull CharSequence input) {
        Intrinsics.checkParameterIsNotNull(input, "input");
        return this.nativePattern.matcher(input).matches();
    }

    public final boolean containsMatchIn(@NotNull CharSequence input) {
        Intrinsics.checkParameterIsNotNull(input, "input");
        return this.nativePattern.matcher(input).find();
    }

    @Nullable
    public final MatchResult find(@NotNull CharSequence input, int startIndex) {
        Intrinsics.checkParameterIsNotNull(input, "input");
        Matcher matcher = this.nativePattern.matcher(input);
        Intrinsics.checkExpressionValueIsNotNull(matcher, "nativePattern.matcher(input)");
        return RegexKt.access$findNext(matcher, startIndex, input);
    }

    @NotNull
    public final Sequence<MatchResult> findAll(@NotNull CharSequence input, int startIndex) {
        Intrinsics.checkParameterIsNotNull(input, "input");
        return SequencesKt.generateSequence((Function0) new Regex$findAll$1(this, input, startIndex), (Function1) Regex$findAll$2.INSTANCE);
    }

    @Nullable
    public final MatchResult matchEntire(@NotNull CharSequence input) {
        Intrinsics.checkParameterIsNotNull(input, "input");
        Matcher matcher = this.nativePattern.matcher(input);
        Intrinsics.checkExpressionValueIsNotNull(matcher, "nativePattern.matcher(input)");
        return RegexKt.access$matchEntire(matcher, input);
    }

    @NotNull
    public final String replace(@NotNull CharSequence input, @NotNull String replacement) {
        Intrinsics.checkParameterIsNotNull(input, "input");
        Intrinsics.checkParameterIsNotNull(replacement, "replacement");
        String strReplaceAll = this.nativePattern.matcher(input).replaceAll(replacement);
        Intrinsics.checkExpressionValueIsNotNull(strReplaceAll, "nativePattern.matcher(in…).replaceAll(replacement)");
        return strReplaceAll;
    }

    @NotNull
    public final String replace(@NotNull CharSequence input, @NotNull Function1<? super MatchResult, ? extends CharSequence> transform) {
        Intrinsics.checkParameterIsNotNull(input, "input");
        Intrinsics.checkParameterIsNotNull(transform, "transform");
        int iIntValue = 0;
        MatchResult matchResultFind$default = find$default(this, input, 0, 2, null);
        if (matchResultFind$default == null) {
            return input.toString();
        }
        int length = input.length();
        StringBuilder sb = new StringBuilder(length);
        do {
            if (matchResultFind$default == null) {
                Intrinsics.throwNpe();
            }
            sb.append(input, iIntValue, matchResultFind$default.getRange().getStart().intValue());
            sb.append(transform.invoke(matchResultFind$default));
            iIntValue = matchResultFind$default.getRange().getEndInclusive().intValue() + 1;
            matchResultFind$default = matchResultFind$default.next();
            if (iIntValue >= length) {
                break;
            }
        } while (matchResultFind$default != null);
        if (iIntValue < length) {
            sb.append(input, iIntValue, length);
        }
        String string = sb.toString();
        Intrinsics.checkExpressionValueIsNotNull(string, "sb.toString()");
        return string;
    }

    @NotNull
    public final String replaceFirst(@NotNull CharSequence input, @NotNull String replacement) {
        Intrinsics.checkParameterIsNotNull(input, "input");
        Intrinsics.checkParameterIsNotNull(replacement, "replacement");
        String strReplaceFirst = this.nativePattern.matcher(input).replaceFirst(replacement);
        Intrinsics.checkExpressionValueIsNotNull(strReplaceFirst, "nativePattern.matcher(in…replaceFirst(replacement)");
        return strReplaceFirst;
    }

    @NotNull
    public final List<String> split(@NotNull CharSequence input, int limit) {
        Intrinsics.checkParameterIsNotNull(input, "input");
        if (!(limit >= 0)) {
            throw new IllegalArgumentException(("Limit must be non-negative, but was " + limit + '.').toString());
        }
        Pattern pattern = this.nativePattern;
        if (limit == 0) {
            limit = -1;
        }
        String[] strArrSplit = pattern.split(input, limit);
        Intrinsics.checkExpressionValueIsNotNull(strArrSplit, "nativePattern.split(inpu…imit == 0) -1 else limit)");
        return ArraysKt.asList(strArrSplit);
    }

    @NotNull
    public String toString() {
        String string = this.nativePattern.toString();
        Intrinsics.checkExpressionValueIsNotNull(string, "nativePattern.toString()");
        return string;
    }

    @NotNull
    /* JADX INFO: renamed from: toPattern, reason: from getter */
    public final Pattern getNativePattern() {
        return this.nativePattern;
    }

    private final Object writeReplace() {
        String strPattern = this.nativePattern.pattern();
        Intrinsics.checkExpressionValueIsNotNull(strPattern, "nativePattern.pattern()");
        return new Regex$Serialized(strPattern, this.nativePattern.flags());
    }
}
