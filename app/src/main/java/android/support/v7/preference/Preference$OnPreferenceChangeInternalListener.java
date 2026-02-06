package android.support.v7.preference;

interface Preference$OnPreferenceChangeInternalListener {
    void onPreferenceChange(Preference preference);

    void onPreferenceHierarchyChange(Preference preference);

    void onPreferenceVisibilityChange(Preference preference);
}
