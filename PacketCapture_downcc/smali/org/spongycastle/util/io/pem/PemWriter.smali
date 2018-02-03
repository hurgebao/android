.class public Lorg/spongycastle/util/io/pem/PemWriter;
.super Ljava/io/BufferedWriter;
.source "PemWriter.java"


# instance fields
.field private buf:[C

.field private final nlLength:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 19
    const/16 v1, 0x40

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/spongycastle/util/io/pem/PemWriter;->buf:[C

    .line 30
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "nl":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lorg/spongycastle/util/io/pem/PemWriter;->nlLength:I

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lorg/spongycastle/util/io/pem/PemWriter;->nlLength:I

    goto :goto_0
.end method

.method private writeEncoded([B)V
    .locals 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {p1}, Lorg/spongycastle/util/encoders/Base64;->encode([B)[B

    move-result-object p1

    .line 104
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 106
    const/4 v1, 0x0

    .line 108
    .local v1, "index":I
    :goto_1
    iget-object v2, p0, Lorg/spongycastle/util/io/pem/PemWriter;->buf:[C

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 110
    add-int v2, v0, v1

    array-length v3, p1

    if-lt v2, v3, :cond_1

    .line 117
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/util/io/pem/PemWriter;->buf:[C

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lorg/spongycastle/util/io/pem/PemWriter;->write([CII)V

    .line 118
    invoke-virtual {p0}, Lorg/spongycastle/util/io/pem/PemWriter;->newLine()V

    .line 104
    iget-object v2, p0, Lorg/spongycastle/util/io/pem/PemWriter;->buf:[C

    array-length v2, v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 114
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/util/io/pem/PemWriter;->buf:[C

    add-int v3, v0, v1

    aget-byte v3, p1, v3

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 120
    .end local v1    # "index":I
    :cond_2
    return-void
.end method

.method private writePostEncapsulationBoundary(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lorg/spongycastle/util/io/pem/PemWriter;->newLine()V

    .line 136
    return-void
.end method

.method private writePreEncapsulationBoundary(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----BEGIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lorg/spongycastle/util/io/pem/PemWriter;->newLine()V

    .line 128
    return-void
.end method


# virtual methods
.method public writeObject(Lorg/spongycastle/util/io/pem/PemObjectGenerator;)V
    .locals 4
    .param p1, "objGen"    # Lorg/spongycastle/util/io/pem/PemObjectGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-interface {p1}, Lorg/spongycastle/util/io/pem/PemObjectGenerator;->generate()Lorg/spongycastle/util/io/pem/PemObject;

    move-result-object v2

    .line 78
    .local v2, "obj":Lorg/spongycastle/util/io/pem/PemObject;
    invoke-virtual {v2}, Lorg/spongycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/spongycastle/util/io/pem/PemWriter;->writePreEncapsulationBoundary(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v2}, Lorg/spongycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 82
    invoke-virtual {v2}, Lorg/spongycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/util/io/pem/PemHeader;

    .line 86
    .local v0, "hdr":Lorg/spongycastle/util/io/pem/PemHeader;
    invoke-virtual {v0}, Lorg/spongycastle/util/io/pem/PemHeader;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/spongycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    .line 87
    const-string v3, ": "

    invoke-virtual {p0, v3}, Lorg/spongycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Lorg/spongycastle/util/io/pem/PemHeader;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/spongycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lorg/spongycastle/util/io/pem/PemWriter;->newLine()V

    goto :goto_0

    .line 92
    .end local v0    # "hdr":Lorg/spongycastle/util/io/pem/PemHeader;
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/util/io/pem/PemWriter;->newLine()V

    .line 95
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v2}, Lorg/spongycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/spongycastle/util/io/pem/PemWriter;->writeEncoded([B)V

    .line 96
    invoke-virtual {v2}, Lorg/spongycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/spongycastle/util/io/pem/PemWriter;->writePostEncapsulationBoundary(Ljava/lang/String;)V

    .line 97
    return-void
.end method
