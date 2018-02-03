.class public Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;
.super Ljava/lang/Object;
.source "TlsExtensionsUtils.java"


# static fields
.field public static final EXT_encrypt_then_mac:Ljava/lang/Integer;

.field public static final EXT_heartbeat:Ljava/lang/Integer;

.field public static final EXT_max_fragment_length:Ljava/lang/Integer;

.field public static final EXT_server_name:Ljava/lang/Integer;

.field public static final EXT_status_request:Ljava/lang/Integer;

.field public static final EXT_truncated_hmac:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/16 v0, 0x16

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_encrypt_then_mac:Ljava/lang/Integer;

    .line 13
    const/16 v0, 0xf

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_heartbeat:Ljava/lang/Integer;

    .line 14
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_max_fragment_length:Ljava/lang/Integer;

    .line 15
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_server_name:Ljava/lang/Integer;

    .line 16
    const/4 v0, 0x5

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    .line 17
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_truncated_hmac:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureExtensionsInitialised(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 0
    .param p0, "extensions"    # Ljava/util/Hashtable;

    .prologue
    .line 21
    if-nez p0, :cond_0

    new-instance p0, Ljava/util/Hashtable;

    .end local p0    # "extensions":Ljava/util/Hashtable;
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    :cond_0
    return-object p0
.end method

.method public static getMaxFragmentLengthExtension(Ljava/util/Hashtable;)S
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    sget-object v1, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_max_fragment_length:Ljava/lang/Integer;

    invoke-static {p0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    .line 69
    .local v0, "extensionData":[B
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->readMaxFragmentLengthExtension([B)S

    move-result v1

    goto :goto_0
.end method

.method public static hasEncryptThenMACExtension(Ljava/util/Hashtable;)Z
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    sget-object v1, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_encrypt_then_mac:Ljava/lang/Integer;

    invoke-static {p0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    .line 89
    .local v0, "extensionData":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->readEncryptThenMACExtension([B)Z

    move-result v1

    goto :goto_0
.end method

.method public static hasTruncatedHMacExtension(Ljava/util/Hashtable;)Z
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    sget-object v1, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_truncated_hmac:Ljava/lang/Integer;

    invoke-static {p0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    .line 95
    .local v0, "extensionData":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->readTruncatedHMacExtension([B)Z

    move-result v1

    goto :goto_0
.end method

.method private static readEmptyExtensionData([B)Z
    .locals 2
    .param p0, "extensionData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    if-nez p0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'extensionData\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    array-length v0, p0

    if-eqz v0, :cond_1

    .line 178
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 181
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static readEncryptThenMACExtension([B)Z
    .locals 1
    .param p0, "extensionData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->readEmptyExtensionData([B)Z

    move-result v0

    return v0
.end method

.method public static readMaxFragmentLengthExtension([B)S
    .locals 3
    .param p0, "extensionData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    if-nez p0, :cond_0

    .line 211
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'extensionData\' cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_0
    array-length v1, p0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 216
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 219
    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    int-to-short v0, v1

    .line 221
    .local v0, "maxFragmentLength":S
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/MaxFragmentLength;->isValid(S)Z

    move-result v1

    if-nez v1, :cond_2

    .line 223
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x2f

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 226
    :cond_2
    return v0
.end method

.method public static readTruncatedHMacExtension([B)Z
    .locals 1
    .param p0, "extensionData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->readEmptyExtensionData([B)Z

    move-result v0

    return v0
.end method
