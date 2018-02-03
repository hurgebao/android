.class Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;
.super Ljava/io/ByteArrayOutputStream;
.source "TlsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/tls/TlsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HandshakeMessage"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/crypto/tls/TlsProtocol;


# direct methods
.method constructor <init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V
    .locals 1
    .param p2, "handshakeType"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1163
    const/16 v0, 0x3c

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;SI)V

    .line 1164
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/crypto/tls/TlsProtocol;SI)V
    .locals 1
    .param p2, "handshakeType"    # S
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1167
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->this$0:Lorg/spongycastle/crypto/tls/TlsProtocol;

    .line 1168
    add-int/lit8 v0, p3, 0x4

    invoke-direct {p0, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1169
    invoke-static {p2, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 1171
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->count:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->count:I

    .line 1172
    return-void
.end method


# virtual methods
.method writeToRecordStream()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1177
    iget v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->count:I

    add-int/lit8 v0, v1, -0x4

    .line 1178
    .local v0, "length":I
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint24(I)V

    .line 1179
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->buf:[B

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint24(I[BI)V

    .line 1180
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->this$0:Lorg/spongycastle/crypto/tls/TlsProtocol;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->buf:[B

    const/4 v3, 0x0

    iget v4, p0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->count:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/spongycastle/crypto/tls/TlsProtocol;->writeHandshakeMessage([BII)V

    .line 1181
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->buf:[B

    .line 1182
    return-void
.end method
