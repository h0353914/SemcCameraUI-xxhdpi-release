package com.sonyericsson.android.camera.util.capability;

public class ResolutionCapabilityItem extends CapabilityItem<ResolutionOptions> {
    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    /* bridge */ /* synthetic */ ResolutionOptions getDefaultValue() {
        return getDefaultValue();
    }

    ResolutionCapabilityItem(ResolutionOptions resolutionOptions) {
        super("", resolutionOptions);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    ResolutionOptions getDefaultValue() {
        return new ResolutionOptions();
    }
}
