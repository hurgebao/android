.class public Lorg/spongycastle/crypto/io/MacOutputStream;
.super Ljava/io/OutputStream;
.source "MacOutputStream.java"


# instance fields
.field protected mac:Lorg/spongycastle/crypto/Mac;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Mac;)V
    .locals 0
    .param p1, "mac"    # Lorg/spongycastle/crypto/Mac;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/spongycastle/crypto/io/MacOutputStream;->mac:Lorg/spongycastle/crypto/Mac;

    .line 17
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lorg/spongycastle/crypto/io/MacOutputStream;->mac:Lorg/spongycastle/crypto/Mac;

    int-to-byte v1, p1

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 23
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lorg/spongycastle/crypto/io/MacOutputStream;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 32
    return-void
.end method
