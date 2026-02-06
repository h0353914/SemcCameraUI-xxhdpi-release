package android.support.v7.widget;

import android.graphics.PorterDuff$Mode;
import android.graphics.PorterDuffColorFilter;
import android.support.v4.util.LruCache;

class AppCompatDrawableManager$ColorFilterLruCache extends LruCache<Integer, PorterDuffColorFilter> {
    public AppCompatDrawableManager$ColorFilterLruCache(int i) {
        super(i);
    }

    PorterDuffColorFilter get(int i, PorterDuff$Mode porterDuff$Mode) {
        return get(Integer.valueOf(generateCacheKey(i, porterDuff$Mode)));
    }

    PorterDuffColorFilter put(int i, PorterDuff$Mode porterDuff$Mode, PorterDuffColorFilter porterDuffColorFilter) {
        return put(Integer.valueOf(generateCacheKey(i, porterDuff$Mode)), porterDuffColorFilter);
    }

    private static int generateCacheKey(int i, PorterDuff$Mode porterDuff$Mode) {
        return (31 * (i + 31)) + porterDuff$Mode.hashCode();
    }
}
