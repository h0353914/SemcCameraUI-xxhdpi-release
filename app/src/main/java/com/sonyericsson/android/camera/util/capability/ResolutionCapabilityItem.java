package com.sonyericsson.android.camera.util.capability;

public class ResolutionCapabilityItem extends CapabilityItem<ResolutionOptions> {
    ResolutionCapabilityItem(ResolutionOptions resolutionOptions) {
        super("", resolutionOptions);
    }

@Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    ResolutionOptions getDefaultValue() {
        return new ResolutionOptions();
    }
}
