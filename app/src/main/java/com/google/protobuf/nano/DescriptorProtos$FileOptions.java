package com.google.protobuf.nano;

import java.io.IOException;

public final class DescriptorProtos$FileOptions extends ExtendableMessageNano<DescriptorProtos$FileOptions> {
    private static volatile DescriptorProtos$FileOptions[] _emptyArray;
    public int ccApiVersion;
    public boolean ccEnableArenas;
    public boolean ccGenericServices;
    public boolean ccUtf8Verification;
    public String csharpNamespace;
    public boolean deprecated;
    public String goPackage;
    public String javaAltApiPackage;
    public int javaApiVersion;
    public boolean javaEnableDualGenerateMutableApi;
    public boolean javaGenericServices;
    public boolean javaJava5Enums;
    public boolean javaMultipleFiles;
    public String javaMultipleFilesMutablePackage;
    public boolean javaMutableApi;
    public String javaOuterClassname;
    public String javaPackage;
    public boolean javaStringCheckUtf8;
    public boolean javaUseJavaproto2;
    public boolean javaUseJavastrings;
    public String javascriptPackage;
    public String objcClassPrefix;

    @NanoEnumValue(legacy = false, value = DescriptorProtos$FileOptions$OptimizeMode.class)
    public int optimizeFor;
    public String phpClassPrefix;
    public boolean phpGenericServices;
    public String phpNamespace;
    public int pyApiVersion;
    public boolean pyGenericServices;
    public String swiftPrefix;
    public int szlApiVersion;
    public DescriptorProtos$UninterpretedOption[] uninterpretedOption;
    @NanoEnumValue(legacy = false, value = DescriptorProtos$FileOptions$CompatibilityLevel.class)
    public static int checkCompatibilityLevelOrThrow(int value) {
        if (value >= 0 && value <= 0) {
            return value;
        }
        if (value >= 100 && value <= 100) {
            return value;
        }
        StringBuilder sb = new StringBuilder(50);
        sb.append(value);
        sb.append(" is not a valid enum CompatibilityLevel");
        throw new IllegalArgumentException(sb.toString());
    }

    @NanoEnumValue(legacy = false, value = DescriptorProtos$FileOptions$CompatibilityLevel.class)
    public static int[] checkCompatibilityLevelOrThrow(int[] values) {
        int[] iArr = (int[]) values.clone();
        for (int i : iArr) {
            checkCompatibilityLevelOrThrow(i);
        }
        return iArr;
    }

    @NanoEnumValue(legacy = false, value = DescriptorProtos$FileOptions$OptimizeMode.class)
    public static int checkOptimizeModeOrThrow(int value) {
        if (value >= 1 && value <= 3) {
            return value;
        }
        StringBuilder sb = new StringBuilder(44);
        sb.append(value);
        sb.append(" is not a valid enum OptimizeMode");
        throw new IllegalArgumentException(sb.toString());
    }

    @NanoEnumValue(legacy = false, value = DescriptorProtos$FileOptions$OptimizeMode.class)
    public static int[] checkOptimizeModeOrThrow(int[] values) {
        int[] iArr = (int[]) values.clone();
        for (int i : iArr) {
            checkOptimizeModeOrThrow(i);
        }
        return iArr;
    }

    public static DescriptorProtos$FileOptions[] emptyArray() {
        if (_emptyArray == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (_emptyArray == null) {
                    _emptyArray = new DescriptorProtos$FileOptions[0];
                }
            }
        }
        return _emptyArray;
    }

    public DescriptorProtos$FileOptions() {
        clear();
    }

    public DescriptorProtos$FileOptions clear() {
        this.ccApiVersion = 2;
        this.ccUtf8Verification = true;
        this.javaPackage = "";
        this.pyApiVersion = 2;
        this.javaApiVersion = 2;
        this.javaUseJavaproto2 = true;
        this.javaJava5Enums = true;
        this.javaUseJavastrings = false;
        this.javaAltApiPackage = "";
        this.javaEnableDualGenerateMutableApi = false;
        this.javaOuterClassname = "";
        this.javaMultipleFiles = false;
        this.javaStringCheckUtf8 = false;
        this.javaMutableApi = false;
        this.javaMultipleFilesMutablePackage = "";
        this.optimizeFor = 1;
        this.goPackage = "";
        this.javascriptPackage = "";
        this.szlApiVersion = 1;
        this.ccGenericServices = false;
        this.javaGenericServices = false;
        this.pyGenericServices = false;
        this.phpGenericServices = false;
        this.deprecated = false;
        this.ccEnableArenas = false;
        this.objcClassPrefix = "";
        this.csharpNamespace = "";
        this.swiftPrefix = "";
        this.phpClassPrefix = "";
        this.phpNamespace = "";
        this.uninterpretedOption = DescriptorProtos$UninterpretedOption.emptyArray();
        this.unknownFieldData = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    public void writeTo(CodedOutputByteBufferNano output) throws IOException {
        if (this.javaPackage != null && !this.javaPackage.equals("")) {
            output.writeString(1, this.javaPackage);
        }
        if (this.ccApiVersion != 2) {
            output.writeInt32(2, this.ccApiVersion);
        }
        if (this.pyApiVersion != 2) {
            output.writeInt32(4, this.pyApiVersion);
        }
        if (this.javaApiVersion != 2) {
            output.writeInt32(5, this.javaApiVersion);
        }
        if (!this.javaUseJavaproto2) {
            output.writeBool(6, this.javaUseJavaproto2);
        }
        if (!this.javaJava5Enums) {
            output.writeBool(7, this.javaJava5Enums);
        }
        if (this.javaOuterClassname != null && !this.javaOuterClassname.equals("")) {
            output.writeString(8, this.javaOuterClassname);
        }
        if (this.optimizeFor != 1) {
            output.writeInt32(9, this.optimizeFor);
        }
        if (this.javaMultipleFiles) {
            output.writeBool(10, this.javaMultipleFiles);
        }
        if (this.goPackage != null && !this.goPackage.equals("")) {
            output.writeString(11, this.goPackage);
        }
        if (this.javascriptPackage != null && !this.javascriptPackage.equals("")) {
            output.writeString(12, this.javascriptPackage);
        }
        if (this.szlApiVersion != 1) {
            output.writeInt32(14, this.szlApiVersion);
        }
        if (this.ccGenericServices) {
            output.writeBool(16, this.ccGenericServices);
        }
        if (this.javaGenericServices) {
            output.writeBool(17, this.javaGenericServices);
        }
        if (this.pyGenericServices) {
            output.writeBool(18, this.pyGenericServices);
        }
        if (this.javaAltApiPackage != null && !this.javaAltApiPackage.equals("")) {
            output.writeString(19, this.javaAltApiPackage);
        }
        if (this.javaUseJavastrings) {
            output.writeBool(21, this.javaUseJavastrings);
        }
        if (this.deprecated) {
            output.writeBool(23, this.deprecated);
        }
        if (!this.ccUtf8Verification) {
            output.writeBool(24, this.ccUtf8Verification);
        }
        if (this.javaEnableDualGenerateMutableApi) {
            output.writeBool(26, this.javaEnableDualGenerateMutableApi);
        }
        if (this.javaStringCheckUtf8) {
            output.writeBool(27, this.javaStringCheckUtf8);
        }
        if (this.javaMutableApi) {
            output.writeBool(28, this.javaMutableApi);
        }
        if (this.javaMultipleFilesMutablePackage != null && !this.javaMultipleFilesMutablePackage.equals("")) {
            output.writeString(29, this.javaMultipleFilesMutablePackage);
        }
        if (this.ccEnableArenas) {
            output.writeBool(31, this.ccEnableArenas);
        }
        if (this.objcClassPrefix != null && !this.objcClassPrefix.equals("")) {
            output.writeString(36, this.objcClassPrefix);
        }
        if (this.csharpNamespace != null && !this.csharpNamespace.equals("")) {
            output.writeString(37, this.csharpNamespace);
        }
        if (this.swiftPrefix != null && !this.swiftPrefix.equals("")) {
            output.writeString(39, this.swiftPrefix);
        }
        if (this.phpClassPrefix != null && !this.phpClassPrefix.equals("")) {
            output.writeString(40, this.phpClassPrefix);
        }
        if (this.phpNamespace != null && !this.phpNamespace.equals("")) {
            output.writeString(41, this.phpNamespace);
        }
        if (this.phpGenericServices) {
            output.writeBool(42, this.phpGenericServices);
        }
        if (this.uninterpretedOption != null && this.uninterpretedOption.length > 0) {
            for (int i = 0; i < this.uninterpretedOption.length; i++) {
                DescriptorProtos$UninterpretedOption descriptorProtos$UninterpretedOption = this.uninterpretedOption[i];
                if (descriptorProtos$UninterpretedOption != null) {
                    output.writeMessage(999, descriptorProtos$UninterpretedOption);
                }
            }
        }
        super.writeTo(output);
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    protected int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        if (this.javaPackage != null && !this.javaPackage.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.javaPackage);
        }
        if (this.ccApiVersion != 2) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, this.ccApiVersion);
        }
        if (this.pyApiVersion != 2) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(4, this.pyApiVersion);
        }
        if (this.javaApiVersion != 2) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(5, this.javaApiVersion);
        }
        if (!this.javaUseJavaproto2) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(6, this.javaUseJavaproto2);
        }
        if (!this.javaJava5Enums) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(7, this.javaJava5Enums);
        }
        if (this.javaOuterClassname != null && !this.javaOuterClassname.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(8, this.javaOuterClassname);
        }
        if (this.optimizeFor != 1) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(9, this.optimizeFor);
        }
        if (this.javaMultipleFiles) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(10, this.javaMultipleFiles);
        }
        if (this.goPackage != null && !this.goPackage.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(11, this.goPackage);
        }
        if (this.javascriptPackage != null && !this.javascriptPackage.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(12, this.javascriptPackage);
        }
        if (this.szlApiVersion != 1) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(14, this.szlApiVersion);
        }
        if (this.ccGenericServices) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(16, this.ccGenericServices);
        }
        if (this.javaGenericServices) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(17, this.javaGenericServices);
        }
        if (this.pyGenericServices) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(18, this.pyGenericServices);
        }
        if (this.javaAltApiPackage != null && !this.javaAltApiPackage.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(19, this.javaAltApiPackage);
        }
        if (this.javaUseJavastrings) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(21, this.javaUseJavastrings);
        }
        if (this.deprecated) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(23, this.deprecated);
        }
        if (!this.ccUtf8Verification) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(24, this.ccUtf8Verification);
        }
        if (this.javaEnableDualGenerateMutableApi) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(26, this.javaEnableDualGenerateMutableApi);
        }
        if (this.javaStringCheckUtf8) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(27, this.javaStringCheckUtf8);
        }
        if (this.javaMutableApi) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(28, this.javaMutableApi);
        }
        if (this.javaMultipleFilesMutablePackage != null && !this.javaMultipleFilesMutablePackage.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(29, this.javaMultipleFilesMutablePackage);
        }
        if (this.ccEnableArenas) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(31, this.ccEnableArenas);
        }
        if (this.objcClassPrefix != null && !this.objcClassPrefix.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(36, this.objcClassPrefix);
        }
        if (this.csharpNamespace != null && !this.csharpNamespace.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(37, this.csharpNamespace);
        }
        if (this.swiftPrefix != null && !this.swiftPrefix.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(39, this.swiftPrefix);
        }
        if (this.phpClassPrefix != null && !this.phpClassPrefix.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(40, this.phpClassPrefix);
        }
        if (this.phpNamespace != null && !this.phpNamespace.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(41, this.phpNamespace);
        }
        if (this.phpGenericServices) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(42, this.phpGenericServices);
        }
        if (this.uninterpretedOption != null && this.uninterpretedOption.length > 0) {
            for (int i = 0; i < this.uninterpretedOption.length; i++) {
                DescriptorProtos$UninterpretedOption descriptorProtos$UninterpretedOption = this.uninterpretedOption[i];
                if (descriptorProtos$UninterpretedOption != null) {
                    iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(999, descriptorProtos$UninterpretedOption);
                }
            }
        }
        return iComputeSerializedSize;
    }

    @Override // com.google.protobuf.nano.MessageNano
    public DescriptorProtos$FileOptions mergeFrom(CodedInputByteBufferNano input) throws IOException {
        while (true) {
            int tag = input.readTag();
            switch (tag) {
                case 0:
                    return this;
                case 10:
                    this.javaPackage = input.readString();
                    break;
                case 16:
                    this.ccApiVersion = input.readInt32();
                    break;
                case 32:
                    this.pyApiVersion = input.readInt32();
                    break;
                case 40:
                    this.javaApiVersion = input.readInt32();
                    break;
                case 48:
                    this.javaUseJavaproto2 = input.readBool();
                    break;
                case 56:
                    this.javaJava5Enums = input.readBool();
                    break;
                case 66:
                    this.javaOuterClassname = input.readString();
                    break;
                case 72:
                    int position = input.getPosition();
                    try {
                        this.optimizeFor = checkOptimizeModeOrThrow(input.readInt32());
                    } catch (IllegalArgumentException unused) {
                        input.rewindToPosition(position);
                        storeUnknownField(input, tag);
                    }
                    break;
                case 80:
                    this.javaMultipleFiles = input.readBool();
                    break;
                case 90:
                    this.goPackage = input.readString();
                    break;
                case 98:
                    this.javascriptPackage = input.readString();
                    break;
                case 112:
                    this.szlApiVersion = input.readInt32();
                    break;
                case 128:
                    this.ccGenericServices = input.readBool();
                    break;
                case 136:
                    this.javaGenericServices = input.readBool();
                    break;
                case 144:
                    this.pyGenericServices = input.readBool();
                    break;
                case 154:
                    this.javaAltApiPackage = input.readString();
                    break;
                case 168:
                    this.javaUseJavastrings = input.readBool();
                    break;
                case 184:
                    this.deprecated = input.readBool();
                    break;
                case 192:
                    this.ccUtf8Verification = input.readBool();
                    break;
                case 208:
                    this.javaEnableDualGenerateMutableApi = input.readBool();
                    break;
                case 216:
                    this.javaStringCheckUtf8 = input.readBool();
                    break;
                case 224:
                    this.javaMutableApi = input.readBool();
                    break;
                case 234:
                    this.javaMultipleFilesMutablePackage = input.readString();
                    break;
                case 248:
                    this.ccEnableArenas = input.readBool();
                    break;
                case 290:
                    this.objcClassPrefix = input.readString();
                    break;
                case 298:
                    this.csharpNamespace = input.readString();
                    break;
                case 314:
                    this.swiftPrefix = input.readString();
                    break;
                case 322:
                    this.phpClassPrefix = input.readString();
                    break;
                case 330:
                    this.phpNamespace = input.readString();
                    break;
                case 336:
                    this.phpGenericServices = input.readBool();
                    break;
                case 7994:
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(input, 7994);
                    int length = this.uninterpretedOption == null ? 0 : this.uninterpretedOption.length;
                    DescriptorProtos$UninterpretedOption[] descriptorProtos$UninterpretedOptionArr = new DescriptorProtos$UninterpretedOption[repeatedFieldArrayLength + length];
                    if (length != 0) {
                        System.arraycopy(this.uninterpretedOption, 0, descriptorProtos$UninterpretedOptionArr, 0, length);
                    }
                    while (length < descriptorProtos$UninterpretedOptionArr.length - 1) {
                        descriptorProtos$UninterpretedOptionArr[length] = new DescriptorProtos$UninterpretedOption();
                        input.readMessage(descriptorProtos$UninterpretedOptionArr[length]);
                        input.readTag();
                        length++;
                    }
                    descriptorProtos$UninterpretedOptionArr[length] = new DescriptorProtos$UninterpretedOption();
                    input.readMessage(descriptorProtos$UninterpretedOptionArr[length]);
                    this.uninterpretedOption = descriptorProtos$UninterpretedOptionArr;
                    break;
                default:
                    if (!super.storeUnknownField(input, tag)) {
                        return this;
                    }
                    break;
            }
        }
    }

    public static DescriptorProtos$FileOptions parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
        return (DescriptorProtos$FileOptions) MessageNano.mergeFrom(new DescriptorProtos$FileOptions(), data);
    }

    public static DescriptorProtos$FileOptions parseFrom(CodedInputByteBufferNano input) throws IOException {
        return new DescriptorProtos$FileOptions().mergeFrom(input);
    }
}
