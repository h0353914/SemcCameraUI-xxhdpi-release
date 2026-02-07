package com.google.gson.internal.bind;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
class TypeAdapters$22$1 extends TypeAdapter<Timestamp> {
    final /* synthetic */ TypeAdapters$22 this$0;
    final /* synthetic */ TypeAdapter val$dateTypeAdapter;

    TypeAdapters$22$1(TypeAdapters$22 typeAdapters$22, TypeAdapter typeAdapter) {
        this.this$0 = typeAdapters$22;
        this.val$dateTypeAdapter = typeAdapter;
    }

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ Timestamp read(JsonReader jsonReader) throws IOException {
        return read2(jsonReader);
    }

    @Override // com.google.gson.TypeAdapter
    public /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Timestamp timestamp) throws IOException {
        write2(jsonWriter, timestamp);
    }

    @Override // com.google.gson.TypeAdapter
    /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
    public Timestamp read2(JsonReader jsonReader) throws IOException {
        Date date = (Date) this.val$dateTypeAdapter.read(jsonReader);
        if (date != null) {
            return new Timestamp(date.getTime());
        }
        return null;
    }

    /* JADX INFO: renamed from: write, reason: avoid collision after fix types in other method */
    public void write2(JsonWriter jsonWriter, Timestamp timestamp) throws IOException {
        this.val$dateTypeAdapter.write(jsonWriter, timestamp);
    }
}
