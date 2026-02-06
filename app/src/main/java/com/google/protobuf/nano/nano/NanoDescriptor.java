package com.google.protobuf.nano.nano;

import com.google.protobuf.nano.DescriptorProtos$EnumOptions;
import com.google.protobuf.nano.DescriptorProtos$EnumValueOptions;
import com.google.protobuf.nano.DescriptorProtos$FieldOptions;
import com.google.protobuf.nano.DescriptorProtos$FileOptions;
import com.google.protobuf.nano.DescriptorProtos$MessageOptions;
import com.google.protobuf.nano.Extension;
import com.google.protobuf.nano.NanoEnumValue;

public abstract class NanoDescriptor {
    public static final Extension<DescriptorProtos$MessageOptions, Boolean> legacyOneof = Extension.createPrimitiveTyped(8, Boolean.class, 1180950304);
    public static final Extension<DescriptorProtos$MessageOptions, Boolean> messageAsLite = Extension.createPrimitiveTyped(8, Boolean.class, 1195348696);
    public static final Extension<DescriptorProtos$MessageOptions, String> messageUnmungedFileDescriptorName = Extension.createPrimitiveTyped(9, String.class, 1522304402);
    public static final Extension<DescriptorProtos$EnumOptions, Boolean> enumAsLite = Extension.createPrimitiveTyped(8, Boolean.class, 1195355736);
    public static final Extension<DescriptorProtos$EnumOptions, Boolean> legacyEnum = Extension.createPrimitiveTyped(8, Boolean.class, 1308211224);
    public static final Extension<DescriptorProtos$EnumOptions, String> enumUnmungedFileDescriptorName = Extension.createPrimitiveTyped(9, String.class, 1522362506);
    public static final Extension<DescriptorProtos$FieldOptions, Integer> generateAs = Extension.createPrimitiveTyped(14, Integer.class, 1437615632);
    public static final Extension<DescriptorProtos$EnumValueOptions, Boolean> watermarkCompliant = Extension.createPrimitiveTyped(8, Boolean.class, 1301621224);
    public static final Extension<DescriptorProtos$EnumValueOptions, Boolean> emeritus = Extension.createPrimitiveTyped(8, Boolean.class, 1307892264);
    public static final Extension<DescriptorProtos$EnumValueOptions, Boolean> unmungedDepsCompliant = Extension.createPrimitiveTyped(8, Boolean.class, 1362093848);
    public static final Extension<DescriptorProtos$EnumValueOptions, String[]> whitelisted = Extension.createRepeatedPrimitiveTyped(9, String[].class, 1432768322, 1432768322, 0);
    public static final Extension<DescriptorProtos$FileOptions, Integer> munger = Extension.createPrimitiveTyped(14, Integer.class, 1243722024);
    public static final Extension<DescriptorProtos$FileOptions, byte[]> encodedMungee = Extension.createPrimitiveTyped(12, byte[].class, 1257962002);
    public static final Extension<DescriptorProtos$FileOptions, Boolean> fileAsLite = Extension.createPrimitiveTyped(8, Boolean.class, 1445185760);

    private NanoDescriptor() {
    }

    @NanoEnumValue(legacy = false, value = NanoDescriptor$GenerateAs.class)
    public static int checkGenerateAsOrThrow(int value) {
        if (value >= 0 && value <= 3) {
            return value;
        }
        StringBuilder sb = new StringBuilder(42);
        sb.append(value);
        sb.append(" is not a valid enum GenerateAs");
        throw new IllegalArgumentException(sb.toString());
    }

    @NanoEnumValue(legacy = false, value = NanoDescriptor$GenerateAs.class)
    public static int[] checkGenerateAsOrThrow(int[] values) {
        int[] iArr = (int[]) values.clone();
        for (int i : iArr) {
            checkGenerateAsOrThrow(i);
        }
        return iArr;
    }

    @NanoEnumValue(legacy = false, value = NanoDescriptor$Munger.class)
    public static int checkMungerOrThrow(int value) {
        if (value >= 0 && value <= 18) {
            return value;
        }
        if (value >= 100 && value <= 101) {
            return value;
        }
        StringBuilder sb = new StringBuilder(38);
        sb.append(value);
        sb.append(" is not a valid enum Munger");
        throw new IllegalArgumentException(sb.toString());
    }

    @NanoEnumValue(legacy = false, value = NanoDescriptor$Munger.class)
    public static int[] checkMungerOrThrow(int[] values) {
        int[] iArr = (int[]) values.clone();
        for (int i : iArr) {
            checkMungerOrThrow(i);
        }
        return iArr;
    }
}
