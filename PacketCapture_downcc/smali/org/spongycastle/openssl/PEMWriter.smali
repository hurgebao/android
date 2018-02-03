.class public Lorg/spongycastle/openssl/PEMWriter;
.super Lorg/spongycastle/util/io/pem/PemWriter;
.source "PEMWriter.java"


# virtual methods
.method public writeObject(Lorg/spongycastle/util/io/pem/PemObjectGenerator;)V
    .locals 0
    .param p1, "obj"    # Lorg/spongycastle/util/io/pem/PemObjectGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-super {p0, p1}, Lorg/spongycastle/util/io/pem/PemWriter;->writeObject(Lorg/spongycastle/util/io/pem/PemObjectGenerator;)V

    .line 68
    return-void
.end method
