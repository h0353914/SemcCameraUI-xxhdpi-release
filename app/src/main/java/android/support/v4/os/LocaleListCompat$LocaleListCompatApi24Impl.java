package android.support.v4.os;

import android.os.LocaleList;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import java.util.Locale;

@RequiresApi(24)
class LocaleListCompat$LocaleListCompatApi24Impl implements LocaleListInterface {
    private LocaleList mLocaleList = new LocaleList(new Locale[0]);

    LocaleListCompat$LocaleListCompatApi24Impl() {
    }

    @Override // android.support.v4.os.LocaleListInterface
    public void setLocaleList(@NonNull Locale... localeArr) {
        this.mLocaleList = new LocaleList(localeArr);
    }

    @Override // android.support.v4.os.LocaleListInterface
    public Object getLocaleList() {
        return this.mLocaleList;
    }

    @Override // android.support.v4.os.LocaleListInterface
    public Locale get(int i) {
        return this.mLocaleList.get(i);
    }

    @Override // android.support.v4.os.LocaleListInterface
    public boolean isEmpty() {
        return this.mLocaleList.isEmpty();
    }

    @Override // android.support.v4.os.LocaleListInterface
    @IntRange(from = 0)
    public int size() {
        return this.mLocaleList.size();
    }

    @Override // android.support.v4.os.LocaleListInterface
    @IntRange(from = -1)
    public int indexOf(Locale locale) {
        return this.mLocaleList.indexOf(locale);
    }

    @Override // android.support.v4.os.LocaleListInterface
    public boolean equals(Object obj) {
        return this.mLocaleList.equals(((LocaleListCompat) obj).unwrap());
    }

    @Override // android.support.v4.os.LocaleListInterface
    public int hashCode() {
        return this.mLocaleList.hashCode();
    }

    @Override // android.support.v4.os.LocaleListInterface
    public String toString() {
        return this.mLocaleList.toString();
    }

    @Override // android.support.v4.os.LocaleListInterface
    public String toLanguageTags() {
        return this.mLocaleList.toLanguageTags();
    }

    @Override // android.support.v4.os.LocaleListInterface
    @Nullable
    public Locale getFirstMatch(String[] strArr) {
        if (this.mLocaleList != null) {
            return this.mLocaleList.getFirstMatch(strArr);
        }
        return null;
    }
}
