.class public Lorg/spongycastle/asn1/ASN1StreamParser;
.super Ljava/lang/Object;
.source "ASN1StreamParser.java"


# instance fields
.field private final _in:Ljava/io/InputStream;

.field private final _limit:I

.field private final tmpBuffers:[[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 19
    invoke-static {p1}, Lorg/spongycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "limit"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    .line 27
    iput p2, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->_limit:I

    .line 29
    const/16 v0, 0xb

    new-array v0, v0, [[B

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->tmpBuffers:[[B

    .line 30
    return-void
.end method

.method private set00Check(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 225
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v0, v0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    check-cast v0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->setEofOn00(Z)V

    .line 229
    :cond_0
    return-void
.end method


# virtual methods
.method readIndef(I)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 3
    .param p1, "tagValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 54
    new-instance v0, Lorg/spongycastle/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown BER object encountered: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :sswitch_0
    new-instance v0, Lorg/spongycastle/asn1/DERExternalParser;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/DERExternalParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    .line 52
    :goto_0
    return-object v0

    .line 48
    :sswitch_1
    new-instance v0, Lorg/spongycastle/asn1/BEROctetStringParser;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/BEROctetStringParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    goto :goto_0

    .line 50
    :sswitch_2
    new-instance v0, Lorg/spongycastle/asn1/BERSequenceParser;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/BERSequenceParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    goto :goto_0

    .line 52
    :sswitch_3
    new-instance v0, Lorg/spongycastle/asn1/BERSetParser;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/BERSetParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    goto :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_2
        0x11 -> :sswitch_3
    .end sparse-switch
.end method

.method public readObject()Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 125
    iget-object v9, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-virtual {v9}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 126
    .local v6, "tag":I
    const/4 v9, -0x1

    if-ne v6, v9, :cond_0

    .line 128
    const/4 v8, 0x0

    .line 214
    :goto_0
    return-object v8

    .line 134
    :cond_0
    invoke-direct {p0, v3}, Lorg/spongycastle/asn1/ASN1StreamParser;->set00Check(Z)V

    .line 139
    iget-object v9, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-static {v9, v6}, Lorg/spongycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    move-result v7

    .line 141
    .local v7, "tagNo":I
    and-int/lit8 v9, v6, 0x20

    if-eqz v9, :cond_1

    move v3, v8

    .line 146
    .local v3, "isConstructed":Z
    :cond_1
    iget-object v9, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iget v10, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-static {v9, v10}, Lorg/spongycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;I)I

    move-result v4

    .line 148
    .local v4, "length":I
    if-gez v4, :cond_5

    .line 150
    if-nez v3, :cond_2

    .line 152
    new-instance v8, Ljava/io/IOException;

    const-string v9, "indefinite length primitive encoding encountered"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 155
    :cond_2
    new-instance v2, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;

    iget-object v9, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iget v10, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-direct {v2, v9, v10}, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 156
    .local v2, "indIn":Lorg/spongycastle/asn1/IndefiniteLengthInputStream;
    new-instance v5, Lorg/spongycastle/asn1/ASN1StreamParser;

    iget v9, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-direct {v5, v2, v9}, Lorg/spongycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 158
    .local v5, "sp":Lorg/spongycastle/asn1/ASN1StreamParser;
    and-int/lit8 v9, v6, 0x40

    if-eqz v9, :cond_3

    .line 160
    new-instance v8, Lorg/spongycastle/asn1/BERApplicationSpecificParser;

    invoke-direct {v8, v7, v5}, Lorg/spongycastle/asn1/BERApplicationSpecificParser;-><init>(ILorg/spongycastle/asn1/ASN1StreamParser;)V

    goto :goto_0

    .line 163
    :cond_3
    and-int/lit16 v9, v6, 0x80

    if-eqz v9, :cond_4

    .line 165
    new-instance v9, Lorg/spongycastle/asn1/BERTaggedObjectParser;

    invoke-direct {v9, v8, v7, v5}, Lorg/spongycastle/asn1/BERTaggedObjectParser;-><init>(ZILorg/spongycastle/asn1/ASN1StreamParser;)V

    move-object v8, v9

    goto :goto_0

    .line 168
    :cond_4
    invoke-virtual {v5, v7}, Lorg/spongycastle/asn1/ASN1StreamParser;->readIndef(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v8

    goto :goto_0

    .line 172
    .end local v2    # "indIn":Lorg/spongycastle/asn1/IndefiniteLengthInputStream;
    .end local v5    # "sp":Lorg/spongycastle/asn1/ASN1StreamParser;
    :cond_5
    new-instance v0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;

    iget-object v8, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-direct {v0, v8, v4}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 174
    .local v0, "defIn":Lorg/spongycastle/asn1/DefiniteLengthInputStream;
    and-int/lit8 v8, v6, 0x40

    if-eqz v8, :cond_6

    .line 176
    new-instance v8, Lorg/spongycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v8, v3, v7, v9}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(ZI[B)V

    goto :goto_0

    .line 179
    :cond_6
    and-int/lit16 v8, v6, 0x80

    if-eqz v8, :cond_7

    .line 181
    new-instance v8, Lorg/spongycastle/asn1/BERTaggedObjectParser;

    new-instance v9, Lorg/spongycastle/asn1/ASN1StreamParser;

    invoke-direct {v9, v0}, Lorg/spongycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v3, v7, v9}, Lorg/spongycastle/asn1/BERTaggedObjectParser;-><init>(ZILorg/spongycastle/asn1/ASN1StreamParser;)V

    goto :goto_0

    .line 184
    :cond_7
    if-eqz v3, :cond_8

    .line 187
    sparse-switch v7, :sswitch_data_0

    .line 201
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unknown tag "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " encountered"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 193
    :sswitch_0
    new-instance v8, Lorg/spongycastle/asn1/BEROctetStringParser;

    new-instance v9, Lorg/spongycastle/asn1/ASN1StreamParser;

    invoke-direct {v9, v0}, Lorg/spongycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Lorg/spongycastle/asn1/BEROctetStringParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    goto/16 :goto_0

    .line 195
    :sswitch_1
    new-instance v8, Lorg/spongycastle/asn1/DERSequenceParser;

    new-instance v9, Lorg/spongycastle/asn1/ASN1StreamParser;

    invoke-direct {v9, v0}, Lorg/spongycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Lorg/spongycastle/asn1/DERSequenceParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    goto/16 :goto_0

    .line 197
    :sswitch_2
    new-instance v8, Lorg/spongycastle/asn1/DERSetParser;

    new-instance v9, Lorg/spongycastle/asn1/ASN1StreamParser;

    invoke-direct {v9, v0}, Lorg/spongycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Lorg/spongycastle/asn1/DERSetParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    goto/16 :goto_0

    .line 199
    :sswitch_3
    new-instance v8, Lorg/spongycastle/asn1/DERExternalParser;

    new-instance v9, Lorg/spongycastle/asn1/ASN1StreamParser;

    invoke-direct {v9, v0}, Lorg/spongycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Lorg/spongycastle/asn1/DERExternalParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    goto/16 :goto_0

    .line 206
    :cond_8
    packed-switch v7, :pswitch_data_0

    .line 214
    :try_start_0
    iget-object v8, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->tmpBuffers:[[B

    invoke-static {v7, v0, v8}, Lorg/spongycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(ILorg/spongycastle/asn1/DefiniteLengthInputStream;[[B)Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto/16 :goto_0

    .line 209
    :pswitch_0
    new-instance v8, Lorg/spongycastle/asn1/DEROctetStringParser;

    invoke-direct {v8, v0}, Lorg/spongycastle/asn1/DEROctetStringParser;-><init>(Lorg/spongycastle/asn1/DefiniteLengthInputStream;)V

    goto/16 :goto_0

    .line 216
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v8, Lorg/spongycastle/asn1/ASN1Exception;

    const-string v9, "corrupted stream detected"

    invoke-direct {v8, v9, v1}, Lorg/spongycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 187
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_3
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch

    .line 206
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method readTaggedObject(ZI)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 6
    .param p1, "constructed"    # Z
    .param p2, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 101
    if-nez p1, :cond_0

    .line 104
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    check-cast v0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;

    .line 105
    .local v0, "defIn":Lorg/spongycastle/asn1/DefiniteLengthInputStream;
    new-instance v2, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v3, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v2, v5, p2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 117
    .end local v0    # "defIn":Lorg/spongycastle/asn1/DefiniteLengthInputStream;
    :goto_0
    return-object v2

    .line 108
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1StreamParser;->readVector()Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    .line 110
    .local v1, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v2, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v2, v2, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v2, :cond_2

    .line 112
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v2

    if-ne v2, v4, :cond_1

    new-instance v2, Lorg/spongycastle/asn1/BERTaggedObject;

    invoke-virtual {v1, v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->get(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-direct {v2, v4, p2, v3}, Lorg/spongycastle/asn1/BERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lorg/spongycastle/asn1/BERTaggedObject;

    invoke-static {v1}, Lorg/spongycastle/asn1/BERFactory;->createSequence(Lorg/spongycastle/asn1/ASN1EncodableVector;)Lorg/spongycastle/asn1/BERSequence;

    move-result-object v3

    invoke-direct {v2, v5, p2, v3}, Lorg/spongycastle/asn1/BERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v2

    if-ne v2, v4, :cond_3

    new-instance v2, Lorg/spongycastle/asn1/DERTaggedObject;

    invoke-virtual {v1, v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->get(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-direct {v2, v4, p2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_3
    new-instance v2, Lorg/spongycastle/asn1/DERTaggedObject;

    invoke-static {v1}, Lorg/spongycastle/asn1/DERFactory;->createSequence(Lorg/spongycastle/asn1/ASN1EncodableVector;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v3

    invoke-direct {v2, v5, p2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0
.end method

.method readVector()Lorg/spongycastle/asn1/ASN1EncodableVector;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 236
    .local v1, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1StreamParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    .local v0, "obj":Lorg/spongycastle/asn1/ASN1Encodable;
    if-eqz v0, :cond_1

    .line 238
    instance-of v2, v0, Lorg/spongycastle/asn1/InMemoryRepresentable;

    if-eqz v2, :cond_0

    .line 240
    check-cast v0, Lorg/spongycastle/asn1/InMemoryRepresentable;

    .end local v0    # "obj":Lorg/spongycastle/asn1/ASN1Encodable;
    invoke-interface {v0}, Lorg/spongycastle/asn1/InMemoryRepresentable;->getLoadedObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 244
    .restart local v0    # "obj":Lorg/spongycastle/asn1/ASN1Encodable;
    :cond_0
    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 248
    :cond_1
    return-object v1
.end method
