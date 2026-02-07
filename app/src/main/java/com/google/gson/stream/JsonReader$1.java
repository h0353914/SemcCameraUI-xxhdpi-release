package com.google.gson.stream;

import com.google.gson.internal.JsonReaderInternalAccess;
import com.google.gson.internal.bind.JsonTreeReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
class JsonReader$1 extends JsonReaderInternalAccess {
    JsonReader$1() {
    }

    @Override // com.google.gson.internal.JsonReaderInternalAccess
    public void promoteNameToValue(JsonReader jsonReader) throws IOException {
        if (jsonReader instanceof JsonTreeReader) {
            ((JsonTreeReader) jsonReader).promoteNameToValue();
            return;
        }
        int iAccess$000 = JsonReader.access$000(jsonReader);
        if (iAccess$000 == 0) {
            iAccess$000 = JsonReader.access$100(jsonReader);
        }
        if (iAccess$000 == 13) {
            JsonReader.access$002(jsonReader, 9);
            return;
        }
        if (iAccess$000 == 12) {
            JsonReader.access$002(jsonReader, 8);
            return;
        }
        if (iAccess$000 == 14) {
            JsonReader.access$002(jsonReader, 10);
            return;
        }
        throw new IllegalStateException("Expected a name but was " + jsonReader.peek() + "  at line " + JsonReader.access$200(jsonReader) + " column " + JsonReader.access$300(jsonReader));
    }
}
