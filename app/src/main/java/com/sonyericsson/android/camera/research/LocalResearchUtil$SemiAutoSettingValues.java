package com.sonyericsson.android.camera.research;

class LocalResearchUtil$SemiAutoSettingValues {
    private LocalResearchUtil$BasisAndChange<Integer> mAmberBlue = new LocalResearchUtil$BasisAndChange<>(0, 0);
    private LocalResearchUtil$BasisAndChange<Integer> mBrightness = new LocalResearchUtil$BasisAndChange<>(0, 0);

    public void updateAmberBlue(int i) {
        LocalResearchUtil$BasisAndChange.access$102(this.mAmberBlue, Integer.valueOf(i));
    }

    public void updateBrightness(int i) {
        LocalResearchUtil$BasisAndChange.access$102(this.mBrightness, Integer.valueOf(i));
    }

    public boolean hasChange() {
        return this.mAmberBlue.hasChange() || this.mBrightness.hasChange();
    }

    public void applyChange() {
        LocalResearchUtil$BasisAndChange.access$002(this.mAmberBlue, LocalResearchUtil$BasisAndChange.access$100(this.mAmberBlue));
        LocalResearchUtil$BasisAndChange.access$002(this.mBrightness, LocalResearchUtil$BasisAndChange.access$100(this.mBrightness));
    }

    public String toString() {
        return "AMB_" + LocalResearchUtil$BasisAndChange.access$100(this.mAmberBlue) + "_BR_" + LocalResearchUtil$BasisAndChange.access$100(this.mBrightness);
    }

    public boolean isEnabled() {
        return (((Integer) LocalResearchUtil$BasisAndChange.access$100(this.mAmberBlue)).intValue() == 0 && ((Integer) LocalResearchUtil$BasisAndChange.access$100(this.mBrightness)).intValue() == 0) ? false : true;
    }
}
