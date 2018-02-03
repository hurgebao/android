.class public Lorg/spongycastle/crypto/tls/TlsUtils;
.super Ljava/lang/Object;
.source "TlsUtils.java"


# static fields
.field public static final EMPTY_BYTES:[B

.field public static final EXT_signature_algorithms:Ljava/lang/Integer;

.field static final SSL3_CONST:[[B

.field static final SSL_CLIENT:[B

.field static final SSL_SERVER:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 46
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    .line 48
    const/16 v0, 0xd

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->EXT_signature_algorithms:Ljava/lang/Integer;

    .line 1282
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->SSL_CLIENT:[B

    .line 1283
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->SSL_SERVER:[B

    .line 1286
    invoke-static {}, Lorg/spongycastle/crypto/tls/TlsUtils;->genConst()[[B

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->SSL3_CONST:[[B

    return-void

    .line 1282
    nop

    :array_0
    .array-data 1
        0x43t
        0x4ct
        0x4et
        0x54t
    .end array-data

    .line 1283
    :array_1
    .array-data 1
        0x53t
        0x52t
        0x56t
        0x52t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static PRF(Lorg/spongycastle/crypto/tls/TlsContext;[BLjava/lang/String;[BI)[B
    .locals 8
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p1, "secret"    # [B
    .param p2, "asciiLabel"    # Ljava/lang/String;
    .param p3, "seed"    # [B
    .param p4, "size"    # I

    .prologue
    .line 870
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v5

    .line 872
    .local v5, "version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    invoke-virtual {v5}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isSSL()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 874
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "No PRF available for SSLv3 session"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 877
    :cond_0
    invoke-static {p2}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 878
    .local v1, "label":[B
    invoke-static {v1, p3}, Lorg/spongycastle/crypto/tls/TlsUtils;->concat([B[B)[B

    move-result-object v2

    .line 880
    .local v2, "labelSeed":[B
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getPrfAlgorithm()I

    move-result v3

    .line 882
    .local v3, "prfAlgorithm":I
    if-nez v3, :cond_1

    .line 884
    invoke-static {p1, v1, v2, p4}, Lorg/spongycastle/crypto/tls/TlsUtils;->PRF_legacy([B[B[BI)[B

    move-result-object v0

    .line 890
    :goto_0
    return-object v0

    .line 887
    :cond_1
    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->createPRFHash(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v4

    .line 888
    .local v4, "prfDigest":Lorg/spongycastle/crypto/Digest;
    new-array v0, p4, [B

    .line 889
    .local v0, "buf":[B
    invoke-static {v4, p1, v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->hmac_hash(Lorg/spongycastle/crypto/Digest;[B[B[B)V

    goto :goto_0
.end method

.method static PRF_legacy([B[B[BI)[B
    .locals 8
    .param p0, "secret"    # [B
    .param p1, "label"    # [B
    .param p2, "labelSeed"    # [B
    .param p3, "size"    # I

    .prologue
    const/4 v7, 0x0

    .line 903
    array-length v6, p0

    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v5, v6, 0x2

    .line 904
    .local v5, "s_half":I
    new-array v3, v5, [B

    .line 905
    .local v3, "s1":[B
    new-array v4, v5, [B

    .line 906
    .local v4, "s2":[B
    invoke-static {p0, v7, v3, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 907
    array-length v6, p0

    sub-int/2addr v6, v5

    invoke-static {p0, v6, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 909
    new-array v0, p3, [B

    .line 910
    .local v0, "b1":[B
    new-array v1, p3, [B

    .line 911
    .local v1, "b2":[B
    const/4 v6, 0x1

    invoke-static {v6}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v6

    invoke-static {v6, v3, p2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->hmac_hash(Lorg/spongycastle/crypto/Digest;[B[B[B)V

    .line 912
    const/4 v6, 0x2

    invoke-static {v6}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v6

    invoke-static {v6, v4, p2, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->hmac_hash(Lorg/spongycastle/crypto/Digest;[B[B[B)V

    .line 913
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 915
    aget-byte v6, v0, v2

    aget-byte v7, v1, v2

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 913
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 917
    :cond_0
    return-object v0
.end method

.method static calculateKeyBlock(Lorg/spongycastle/crypto/tls/TlsContext;I)[B
    .locals 5
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p1, "size"    # I

    .prologue
    .line 969
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v1

    .line 970
    .local v1, "securityParameters":Lorg/spongycastle/crypto/tls/SecurityParameters;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getMasterSecret()[B

    move-result-object v0

    .line 971
    .local v0, "master_secret":[B
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getServerRandom()[B

    move-result-object v3

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getClientRandom()[B

    move-result-object v4

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->concat([B[B)[B

    move-result-object v2

    .line 974
    .local v2, "seed":[B
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isSSL(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 976
    invoke-static {v0, v2, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateKeyBlock_SSL([B[BI)[B

    move-result-object v3

    .line 979
    :goto_0
    return-object v3

    :cond_0
    const-string v3, "key expansion"

    invoke-static {p0, v0, v3, v2, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->PRF(Lorg/spongycastle/crypto/tls/TlsContext;[BLjava/lang/String;[BI)[B

    move-result-object v3

    goto :goto_0
.end method

.method static calculateKeyBlock_SSL([B[BI)[B
    .locals 11
    .param p0, "master_secret"    # [B
    .param p1, "random"    # [B
    .param p2, "size"    # I

    .prologue
    const/4 v10, 0x0

    .line 984
    const/4 v9, 0x1

    invoke-static {v9}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    .line 985
    .local v1, "md5":Lorg/spongycastle/crypto/Digest;
    const/4 v9, 0x2

    invoke-static {v9}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v5

    .line 986
    .local v5, "sha1":Lorg/spongycastle/crypto/Digest;
    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    .line 987
    .local v2, "md5Size":I
    invoke-interface {v5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v9

    new-array v6, v9, [B

    .line 988
    .local v6, "shatmp":[B
    add-int v9, p2, v2

    new-array v8, v9, [B

    .line 990
    .local v8, "tmp":[B
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v3, 0x0

    .line 991
    .local v3, "pos":I
    :goto_0
    if-ge v3, p2, :cond_0

    .line 993
    sget-object v9, Lorg/spongycastle/crypto/tls/TlsUtils;->SSL3_CONST:[[B

    aget-object v7, v9, v0

    .line 995
    .local v7, "ssl3Const":[B
    array-length v9, v7

    invoke-interface {v5, v7, v10, v9}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 996
    array-length v9, p0

    invoke-interface {v5, p0, v10, v9}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 997
    array-length v9, p1

    invoke-interface {v5, p1, v10, v9}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 998
    invoke-interface {v5, v6, v10}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 1000
    array-length v9, p0

    invoke-interface {v1, p0, v10, v9}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 1001
    array-length v9, v6

    invoke-interface {v1, v6, v10, v9}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 1002
    invoke-interface {v1, v8, v3}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 1004
    add-int/2addr v3, v2

    .line 1005
    add-int/lit8 v0, v0, 0x1

    .line 1006
    goto :goto_0

    .line 1008
    .end local v7    # "ssl3Const":[B
    :cond_0
    new-array v4, p2, [B

    .line 1009
    .local v4, "rval":[B
    invoke-static {v8, v10, v4, v10, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1010
    return-object v4
.end method

.method static calculateMasterSecret(Lorg/spongycastle/crypto/tls/TlsContext;[B)[B
    .locals 4
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p1, "pre_master_secret"    # [B

    .prologue
    .line 1015
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    .line 1016
    .local v0, "securityParameters":Lorg/spongycastle/crypto/tls/SecurityParameters;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getClientRandom()[B

    move-result-object v2

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getServerRandom()[B

    move-result-object v3

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->concat([B[B)[B

    move-result-object v1

    .line 1018
    .local v1, "seed":[B
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isSSL(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1020
    invoke-static {p1, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateMasterSecret_SSL([B[B)[B

    move-result-object v2

    .line 1023
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "master secret"

    const/16 v3, 0x30

    invoke-static {p0, p1, v2, v1, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->PRF(Lorg/spongycastle/crypto/tls/TlsContext;[BLjava/lang/String;[BI)[B

    move-result-object v2

    goto :goto_0
.end method

.method static calculateMasterSecret_SSL([B[B)[B
    .locals 10
    .param p0, "pre_master_secret"    # [B
    .param p1, "random"    # [B

    .prologue
    const/4 v9, 0x0

    .line 1028
    const/4 v8, 0x1

    invoke-static {v8}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    .line 1029
    .local v1, "md5":Lorg/spongycastle/crypto/Digest;
    const/4 v8, 0x2

    invoke-static {v8}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v5

    .line 1030
    .local v5, "sha1":Lorg/spongycastle/crypto/Digest;
    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    .line 1031
    .local v2, "md5Size":I
    invoke-interface {v5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v8

    new-array v6, v8, [B

    .line 1033
    .local v6, "shatmp":[B
    mul-int/lit8 v8, v2, 0x3

    new-array v4, v8, [B

    .line 1034
    .local v4, "rval":[B
    const/4 v3, 0x0

    .line 1036
    .local v3, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v8, 0x3

    if-ge v0, v8, :cond_0

    .line 1038
    sget-object v8, Lorg/spongycastle/crypto/tls/TlsUtils;->SSL3_CONST:[[B

    aget-object v7, v8, v0

    .line 1040
    .local v7, "ssl3Const":[B
    array-length v8, v7

    invoke-interface {v5, v7, v9, v8}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 1041
    array-length v8, p0

    invoke-interface {v5, p0, v9, v8}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 1042
    array-length v8, p1

    invoke-interface {v5, p1, v9, v8}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 1043
    invoke-interface {v5, v6, v9}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 1045
    array-length v8, p0

    invoke-interface {v1, p0, v9, v8}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 1046
    array-length v8, v6

    invoke-interface {v1, v6, v9, v8}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 1047
    invoke-interface {v1, v4, v3}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 1049
    add-int/2addr v3, v2

    .line 1036
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1052
    .end local v7    # "ssl3Const":[B
    :cond_0
    return-object v4
.end method

.method static calculateVerifyData(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B
    .locals 4
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p1, "asciiLabel"    # Ljava/lang/String;
    .param p2, "handshakeHash"    # [B

    .prologue
    .line 1057
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isSSL(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1066
    .end local p2    # "handshakeHash":[B
    :goto_0
    return-object p2

    .line 1062
    .restart local p2    # "handshakeHash":[B
    :cond_0
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v1

    .line 1063
    .local v1, "securityParameters":Lorg/spongycastle/crypto/tls/SecurityParameters;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getMasterSecret()[B

    move-result-object v0

    .line 1064
    .local v0, "master_secret":[B
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getVerifyDataLength()I

    move-result v2

    .line 1066
    .local v2, "verify_data_length":I
    invoke-static {p0, v0, p1, p2, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->PRF(Lorg/spongycastle/crypto/tls/TlsContext;[BLjava/lang/String;[BI)[B

    move-result-object p2

    goto :goto_0
.end method

.method public static checkUint16(I)V
    .locals 2
    .param p0, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidUint16(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 80
    :cond_0
    return-void
.end method

.method public static checkUint24(I)V
    .locals 2
    .param p0, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidUint24(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 96
    :cond_0
    return-void
.end method

.method public static checkUint8(I)V
    .locals 2
    .param p0, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidUint8(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 64
    :cond_0
    return-void
.end method

.method public static cloneHash(SLorg/spongycastle/crypto/Digest;)Lorg/spongycastle/crypto/Digest;
    .locals 2
    .param p0, "hashAlgorithm"    # S
    .param p1, "hash"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 1092
    packed-switch p0, :pswitch_data_0

    .line 1107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown HashAlgorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1095
    :pswitch_0
    new-instance v0, Lorg/spongycastle/crypto/digests/MD5Digest;

    check-cast p1, Lorg/spongycastle/crypto/digests/MD5Digest;

    .end local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>(Lorg/spongycastle/crypto/digests/MD5Digest;)V

    .line 1105
    :goto_0
    return-object v0

    .line 1097
    .restart local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    :pswitch_1
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    check-cast p1, Lorg/spongycastle/crypto/digests/SHA1Digest;

    .end local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>(Lorg/spongycastle/crypto/digests/SHA1Digest;)V

    goto :goto_0

    .line 1099
    .restart local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    :pswitch_2
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA224Digest;

    check-cast p1, Lorg/spongycastle/crypto/digests/SHA224Digest;

    .end local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/digests/SHA224Digest;-><init>(Lorg/spongycastle/crypto/digests/SHA224Digest;)V

    goto :goto_0

    .line 1101
    .restart local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    :pswitch_3
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA256Digest;

    check-cast p1, Lorg/spongycastle/crypto/digests/SHA256Digest;

    .end local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>(Lorg/spongycastle/crypto/digests/SHA256Digest;)V

    goto :goto_0

    .line 1103
    .restart local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    :pswitch_4
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA384Digest;

    check-cast p1, Lorg/spongycastle/crypto/digests/SHA384Digest;

    .end local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/digests/SHA384Digest;-><init>(Lorg/spongycastle/crypto/digests/SHA384Digest;)V

    goto :goto_0

    .line 1105
    .restart local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    :pswitch_5
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA512Digest;

    check-cast p1, Lorg/spongycastle/crypto/digests/SHA512Digest;

    .end local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/digests/SHA512Digest;-><init>(Lorg/spongycastle/crypto/digests/SHA512Digest;)V

    goto :goto_0

    .line 1092
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static concat([B[B)[B
    .locals 4
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .prologue
    const/4 v3, 0x0

    .line 922
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 923
    .local v0, "c":[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 924
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 925
    return-object v0
.end method

.method public static createHash(S)Lorg/spongycastle/crypto/Digest;
    .locals 2
    .param p0, "hashAlgorithm"    # S

    .prologue
    .line 1071
    packed-switch p0, :pswitch_data_0

    .line 1086
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown HashAlgorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1074
    :pswitch_0
    new-instance v0, Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>()V

    .line 1084
    :goto_0
    return-object v0

    .line 1076
    :pswitch_1
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    goto :goto_0

    .line 1078
    :pswitch_2
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA224Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA224Digest;-><init>()V

    goto :goto_0

    .line 1080
    :pswitch_3
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    goto :goto_0

    .line 1082
    :pswitch_4
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA384Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA384Digest;-><init>()V

    goto :goto_0

    .line 1084
    :pswitch_5
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA512Digest;-><init>()V

    goto :goto_0

    .line 1071
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static createPRFHash(I)Lorg/spongycastle/crypto/Digest;
    .locals 1
    .param p0, "prfAlgorithm"    # I

    .prologue
    .line 1113
    packed-switch p0, :pswitch_data_0

    .line 1118
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getHashAlgorithmForPRFAlgorithm(I)S

    move-result v0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1116
    :pswitch_0
    new-instance v0, Lorg/spongycastle/crypto/tls/CombinedHash;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/CombinedHash;-><init>()V

    goto :goto_0

    .line 1113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static createTlsSigner(S)Lorg/spongycastle/crypto/tls/TlsSigner;
    .locals 2
    .param p0, "clientCertificateType"    # S

    .prologue
    .line 1269
    sparse-switch p0, :sswitch_data_0

    .line 1278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'clientCertificateType\' is not a type with signing capability"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1272
    :sswitch_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsDSSSigner;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsDSSSigner;-><init>()V

    .line 1276
    :goto_0
    return-object v0

    .line 1274
    :sswitch_1
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsECDSASigner;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsECDSASigner;-><init>()V

    goto :goto_0

    .line 1276
    :sswitch_2
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsRSASigner;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsRSASigner;-><init>()V

    goto :goto_0

    .line 1269
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x40 -> :sswitch_1
    .end sparse-switch
.end method

.method public static encodeOpaque8([B)[B
    .locals 1
    .param p0, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    array-length v0, p0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint8(I)V

    .line 408
    array-length v0, p0

    int-to-byte v0, v0

    invoke-static {p0, v0}, Lorg/spongycastle/util/Arrays;->prepend([BB)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeSupportedSignatureAlgorithms(Ljava/util/Vector;ZLjava/io/OutputStream;)V
    .locals 5
    .param p0, "supportedSignatureAlgorithms"    # Ljava/util/Vector;
    .param p1, "allowAnonymous"    # Z
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 814
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    const v4, 0x8000

    if-lt v3, v4, :cond_1

    .line 817
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "\'supportedSignatureAlgorithms\' must have length from 1 to (2^15 - 1)"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 822
    :cond_1
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    mul-int/lit8 v2, v3, 0x2

    .line 823
    .local v2, "length":I
    invoke-static {v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    .line 824
    invoke-static {v2, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 825
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 827
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    .line 828
    .local v0, "entry":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    if-nez p1, :cond_2

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v3

    if-nez v3, :cond_2

    .line 834
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "SignatureAlgorithm.anonymous MUST NOT appear in the signature_algorithms extension"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 837
    :cond_2
    invoke-virtual {v0, p2}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->encode(Ljava/io/OutputStream;)V

    .line 825
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 839
    .end local v0    # "entry":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    :cond_3
    return-void
.end method

.method private static genConst()[[B
    .locals 5

    .prologue
    .line 1290
    const/16 v3, 0xa

    .line 1291
    .local v3, "n":I
    new-array v0, v3, [[B

    .line 1292
    .local v0, "arr":[[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1294
    add-int/lit8 v4, v2, 0x1

    new-array v1, v4, [B

    .line 1295
    .local v1, "b":[B
    add-int/lit8 v4, v2, 0x41

    int-to-byte v4, v4

    invoke-static {v1, v4}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 1296
    aput-object v1, v0, v2

    .line 1292
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1298
    .end local v1    # "b":[B
    :cond_0
    return-object v0
.end method

.method public static getCipherType(I)I
    .locals 2
    .param p0, "ciphersuite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1310
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getEncryptionAlgorithm(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1342
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 1321
    :sswitch_0
    const/4 v0, 0x2

    .line 1339
    :goto_0
    return v0

    .line 1333
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1339
    :sswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1310
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0xe -> :sswitch_1
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
        0x66 -> :sswitch_0
    .end sparse-switch
.end method

.method static getClientCertificateType(Lorg/spongycastle/crypto/tls/Certificate;Lorg/spongycastle/crypto/tls/Certificate;)S
    .locals 5
    .param p0, "clientCertificate"    # Lorg/spongycastle/crypto/tls/Certificate;
    .param p1, "serverCertificate"    # Lorg/spongycastle/crypto/tls/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1172
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1174
    const/4 v3, -0x1

    .line 1227
    :goto_0
    return v3

    .line 1177
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/spongycastle/crypto/tls/Certificate;->getCertificateAt(I)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v2

    .line 1178
    .local v2, "x509Cert":Lorg/spongycastle/asn1/x509/Certificate;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    .line 1181
    .local v0, "keyInfo":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    :try_start_0
    invoke-static {v0}, Lorg/spongycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    .line 1182
    .local v1, "publicKey":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1184
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0x50

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1233
    .end local v1    # "publicKey":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :catch_0
    move-exception v3

    .line 1237
    :cond_1
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0x2b

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 1202
    .restart local v1    # "publicKey":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :cond_2
    :try_start_1
    instance-of v3, v1, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    if-eqz v3, :cond_3

    .line 1204
    const/16 v3, 0x80

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/spongycastle/asn1/x509/Certificate;I)V

    .line 1205
    const/4 v3, 0x1

    goto :goto_0

    .line 1212
    :cond_3
    instance-of v3, v1, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;

    if-eqz v3, :cond_4

    .line 1214
    const/16 v3, 0x80

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/spongycastle/asn1/x509/Certificate;I)V

    .line 1215
    const/4 v3, 0x2

    goto :goto_0

    .line 1223
    :cond_4
    instance-of v3, v1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    if-eqz v3, :cond_1

    .line 1225
    const/16 v3, 0x80

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/spongycastle/asn1/x509/Certificate;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1227
    const/16 v3, 0x40

    goto :goto_0
.end method

.method public static getDefaultDSSSignatureAlgorithms()Ljava/util/Vector;
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 698
    new-instance v0, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    invoke-direct {v0, v1, v1}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;-><init>(SS)V

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->vectorOfOne(Ljava/lang/Object;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultECDSASignatureAlgorithms()Ljava/util/Vector;
    .locals 3

    .prologue
    .line 703
    new-instance v0, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;-><init>(SS)V

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->vectorOfOne(Ljava/lang/Object;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultRSASignatureAlgorithms()Ljava/util/Vector;
    .locals 3

    .prologue
    .line 708
    new-instance v0, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;-><init>(SS)V

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->vectorOfOne(Ljava/lang/Object;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static getEncryptionAlgorithm(I)I
    .locals 5
    .param p0, "ciphersuite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x8

    const/4 v4, 0x2

    const/16 v2, 0xd

    const/16 v1, 0x9

    const/4 v3, 0x0

    .line 1348
    sparse-switch p0, :sswitch_data_0

    .line 1638
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 1366
    :sswitch_0
    const/4 v0, 0x7

    .line 1635
    :goto_0
    :sswitch_1
    return v0

    .line 1371
    :sswitch_2
    const/16 v0, 0x66

    goto :goto_0

    .line 1410
    :sswitch_3
    const/16 v0, 0xf

    goto :goto_0

    .line 1416
    :sswitch_4
    const/16 v0, 0x10

    goto :goto_0

    .line 1430
    :sswitch_5
    const/16 v0, 0xa

    goto :goto_0

    :sswitch_6
    move v0, v1

    .line 1448
    goto :goto_0

    :sswitch_7
    move v0, v1

    .line 1455
    goto :goto_0

    :sswitch_8
    move v0, v1

    .line 1465
    goto :goto_0

    .line 1471
    :sswitch_9
    const/16 v0, 0x11

    goto :goto_0

    .line 1477
    :sswitch_a
    const/16 v0, 0x12

    goto :goto_0

    .line 1491
    :sswitch_b
    const/16 v0, 0xb

    goto :goto_0

    .line 1498
    :sswitch_c
    const/16 v0, 0xc

    goto :goto_0

    .line 1513
    :sswitch_d
    const/16 v0, 0xc

    goto :goto_0

    .line 1527
    :sswitch_e
    const/16 v0, 0x13

    goto :goto_0

    :sswitch_f
    move v0, v2

    .line 1534
    goto :goto_0

    :sswitch_10
    move v0, v2

    .line 1541
    goto :goto_0

    :sswitch_11
    move v0, v2

    .line 1551
    goto :goto_0

    .line 1565
    :sswitch_12
    const/16 v0, 0x14

    goto :goto_0

    .line 1575
    :sswitch_13
    const/16 v0, 0x64

    goto :goto_0

    :sswitch_14
    move v0, v3

    .line 1578
    goto :goto_0

    :sswitch_15
    move v0, v3

    .line 1589
    goto :goto_0

    :sswitch_16
    move v0, v3

    .line 1596
    goto :goto_0

    :sswitch_17
    move v0, v3

    .line 1602
    goto :goto_0

    :sswitch_18
    move v0, v4

    .line 1606
    goto :goto_0

    :sswitch_19
    move v0, v4

    .line 1618
    goto :goto_0

    .line 1628
    :sswitch_1a
    const/16 v0, 0x65

    goto :goto_0

    .line 1635
    :sswitch_1b
    const/16 v0, 0xe

    goto :goto_0

    .line 1348
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_14
        0x2 -> :sswitch_15
        0x4 -> :sswitch_18
        0x5 -> :sswitch_19
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x10 -> :sswitch_0
        0x13 -> :sswitch_0
        0x16 -> :sswitch_0
        0x18 -> :sswitch_18
        0x2c -> :sswitch_15
        0x2d -> :sswitch_15
        0x2e -> :sswitch_15
        0x2f -> :sswitch_1
        0x30 -> :sswitch_1
        0x31 -> :sswitch_1
        0x32 -> :sswitch_1
        0x33 -> :sswitch_1
        0x35 -> :sswitch_6
        0x36 -> :sswitch_6
        0x37 -> :sswitch_6
        0x38 -> :sswitch_6
        0x39 -> :sswitch_6
        0x3b -> :sswitch_16
        0x3c -> :sswitch_1
        0x3d -> :sswitch_7
        0x3e -> :sswitch_1
        0x3f -> :sswitch_1
        0x40 -> :sswitch_1
        0x41 -> :sswitch_c
        0x42 -> :sswitch_c
        0x43 -> :sswitch_c
        0x44 -> :sswitch_c
        0x45 -> :sswitch_c
        0x67 -> :sswitch_1
        0x68 -> :sswitch_7
        0x69 -> :sswitch_7
        0x6a -> :sswitch_7
        0x6b -> :sswitch_7
        0x84 -> :sswitch_f
        0x85 -> :sswitch_f
        0x86 -> :sswitch_f
        0x87 -> :sswitch_f
        0x88 -> :sswitch_f
        0x8a -> :sswitch_19
        0x8b -> :sswitch_0
        0x8c -> :sswitch_1
        0x8d -> :sswitch_6
        0x8e -> :sswitch_19
        0x8f -> :sswitch_0
        0x90 -> :sswitch_1
        0x91 -> :sswitch_6
        0x92 -> :sswitch_19
        0x93 -> :sswitch_0
        0x94 -> :sswitch_1
        0x95 -> :sswitch_6
        0x96 -> :sswitch_1b
        0x97 -> :sswitch_1b
        0x98 -> :sswitch_1b
        0x99 -> :sswitch_1b
        0x9a -> :sswitch_1b
        0x9c -> :sswitch_5
        0x9d -> :sswitch_b
        0x9e -> :sswitch_5
        0x9f -> :sswitch_b
        0xa0 -> :sswitch_5
        0xa1 -> :sswitch_b
        0xa2 -> :sswitch_5
        0xa3 -> :sswitch_b
        0xa4 -> :sswitch_5
        0xa5 -> :sswitch_b
        0xa8 -> :sswitch_5
        0xa9 -> :sswitch_b
        0xaa -> :sswitch_5
        0xab -> :sswitch_b
        0xac -> :sswitch_5
        0xad -> :sswitch_b
        0xae -> :sswitch_1
        0xaf -> :sswitch_8
        0xb0 -> :sswitch_16
        0xb1 -> :sswitch_17
        0xb2 -> :sswitch_1
        0xb3 -> :sswitch_8
        0xb4 -> :sswitch_16
        0xb5 -> :sswitch_17
        0xb6 -> :sswitch_1
        0xb7 -> :sswitch_8
        0xb8 -> :sswitch_16
        0xb9 -> :sswitch_17
        0xba -> :sswitch_d
        0xbb -> :sswitch_d
        0xbc -> :sswitch_d
        0xbd -> :sswitch_d
        0xbe -> :sswitch_d
        0xc0 -> :sswitch_10
        0xc1 -> :sswitch_10
        0xc2 -> :sswitch_10
        0xc3 -> :sswitch_10
        0xc4 -> :sswitch_10
        0xc001 -> :sswitch_15
        0xc002 -> :sswitch_19
        0xc003 -> :sswitch_0
        0xc004 -> :sswitch_1
        0xc005 -> :sswitch_6
        0xc006 -> :sswitch_15
        0xc007 -> :sswitch_19
        0xc008 -> :sswitch_0
        0xc009 -> :sswitch_1
        0xc00a -> :sswitch_6
        0xc00b -> :sswitch_15
        0xc00c -> :sswitch_19
        0xc00d -> :sswitch_0
        0xc00e -> :sswitch_1
        0xc00f -> :sswitch_6
        0xc010 -> :sswitch_15
        0xc011 -> :sswitch_19
        0xc012 -> :sswitch_0
        0xc013 -> :sswitch_1
        0xc014 -> :sswitch_6
        0xc016 -> :sswitch_19
        0xc01a -> :sswitch_0
        0xc01b -> :sswitch_0
        0xc01c -> :sswitch_0
        0xc01d -> :sswitch_1
        0xc01e -> :sswitch_1
        0xc01f -> :sswitch_1
        0xc020 -> :sswitch_6
        0xc021 -> :sswitch_6
        0xc022 -> :sswitch_6
        0xc023 -> :sswitch_1
        0xc024 -> :sswitch_8
        0xc025 -> :sswitch_1
        0xc026 -> :sswitch_8
        0xc027 -> :sswitch_1
        0xc028 -> :sswitch_8
        0xc029 -> :sswitch_1
        0xc02a -> :sswitch_8
        0xc02b -> :sswitch_5
        0xc02c -> :sswitch_b
        0xc02d -> :sswitch_5
        0xc02e -> :sswitch_b
        0xc02f -> :sswitch_5
        0xc030 -> :sswitch_b
        0xc031 -> :sswitch_5
        0xc032 -> :sswitch_b
        0xc033 -> :sswitch_19
        0xc034 -> :sswitch_0
        0xc035 -> :sswitch_1
        0xc036 -> :sswitch_6
        0xc037 -> :sswitch_1
        0xc038 -> :sswitch_8
        0xc039 -> :sswitch_15
        0xc03a -> :sswitch_16
        0xc03b -> :sswitch_17
        0xc072 -> :sswitch_d
        0xc073 -> :sswitch_11
        0xc074 -> :sswitch_d
        0xc075 -> :sswitch_11
        0xc076 -> :sswitch_d
        0xc077 -> :sswitch_11
        0xc078 -> :sswitch_d
        0xc079 -> :sswitch_11
        0xc07a -> :sswitch_e
        0xc07b -> :sswitch_12
        0xc07c -> :sswitch_e
        0xc07d -> :sswitch_12
        0xc07e -> :sswitch_e
        0xc07f -> :sswitch_12
        0xc080 -> :sswitch_e
        0xc081 -> :sswitch_12
        0xc082 -> :sswitch_e
        0xc083 -> :sswitch_12
        0xc086 -> :sswitch_e
        0xc087 -> :sswitch_12
        0xc088 -> :sswitch_e
        0xc089 -> :sswitch_12
        0xc08a -> :sswitch_e
        0xc08b -> :sswitch_12
        0xc08c -> :sswitch_e
        0xc08d -> :sswitch_12
        0xc08e -> :sswitch_e
        0xc08f -> :sswitch_12
        0xc090 -> :sswitch_e
        0xc091 -> :sswitch_12
        0xc092 -> :sswitch_e
        0xc093 -> :sswitch_12
        0xc094 -> :sswitch_d
        0xc095 -> :sswitch_11
        0xc096 -> :sswitch_d
        0xc097 -> :sswitch_11
        0xc098 -> :sswitch_d
        0xc099 -> :sswitch_11
        0xc09a -> :sswitch_d
        0xc09b -> :sswitch_11
        0xc09c -> :sswitch_3
        0xc09d -> :sswitch_9
        0xc09e -> :sswitch_3
        0xc09f -> :sswitch_9
        0xc0a0 -> :sswitch_4
        0xc0a1 -> :sswitch_a
        0xc0a2 -> :sswitch_4
        0xc0a3 -> :sswitch_a
        0xc0a4 -> :sswitch_3
        0xc0a5 -> :sswitch_9
        0xc0a6 -> :sswitch_3
        0xc0a7 -> :sswitch_9
        0xc0a8 -> :sswitch_4
        0xc0a9 -> :sswitch_a
        0xc0aa -> :sswitch_4
        0xc0ab -> :sswitch_a
        0xcc13 -> :sswitch_2
        0xcc14 -> :sswitch_2
        0xcc15 -> :sswitch_2
        0xe410 -> :sswitch_13
        0xe411 -> :sswitch_1a
        0xe412 -> :sswitch_13
        0xe413 -> :sswitch_1a
        0xe414 -> :sswitch_13
        0xe415 -> :sswitch_1a
        0xe416 -> :sswitch_13
        0xe417 -> :sswitch_1a
        0xe418 -> :sswitch_13
        0xe419 -> :sswitch_1a
        0xe41a -> :sswitch_13
        0xe41b -> :sswitch_1a
        0xe41c -> :sswitch_13
        0xe41d -> :sswitch_1a
        0xe41e -> :sswitch_13
        0xe41f -> :sswitch_1a
    .end sparse-switch
.end method

.method public static getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B
    .locals 1
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .param p1, "extensionType"    # Ljava/lang/Integer;

    .prologue
    .line 713
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    goto :goto_0
.end method

.method public static getHashAlgorithmForPRFAlgorithm(I)S
    .locals 2
    .param p0, "prfAlgorithm"    # I

    .prologue
    .line 1135
    packed-switch p0, :pswitch_data_0

    .line 1144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown PRFAlgorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1138
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "legacy PRF not a valid algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1140
    :pswitch_1
    const/4 v0, 0x4

    .line 1142
    :goto_0
    return v0

    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    .line 1135
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getMinimumVersion(I)Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 1
    .param p0, "ciphersuite"    # I

    .prologue
    .line 1644
    sparse-switch p0, :sswitch_data_0

    .line 1757
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->SSLv3:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    :goto_0
    return-object v0

    .line 1754
    :sswitch_0
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv12:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    goto :goto_0

    .line 1644
    nop

    :sswitch_data_0
    .sparse-switch
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x67 -> :sswitch_0
        0x68 -> :sswitch_0
        0x69 -> :sswitch_0
        0x6a -> :sswitch_0
        0x6b -> :sswitch_0
        0x9c -> :sswitch_0
        0x9d -> :sswitch_0
        0x9e -> :sswitch_0
        0x9f -> :sswitch_0
        0xa0 -> :sswitch_0
        0xa1 -> :sswitch_0
        0xa2 -> :sswitch_0
        0xa3 -> :sswitch_0
        0xa4 -> :sswitch_0
        0xa5 -> :sswitch_0
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
        0xaa -> :sswitch_0
        0xab -> :sswitch_0
        0xac -> :sswitch_0
        0xad -> :sswitch_0
        0xba -> :sswitch_0
        0xbb -> :sswitch_0
        0xbc -> :sswitch_0
        0xbd -> :sswitch_0
        0xbe -> :sswitch_0
        0xbf -> :sswitch_0
        0xc0 -> :sswitch_0
        0xc1 -> :sswitch_0
        0xc2 -> :sswitch_0
        0xc3 -> :sswitch_0
        0xc4 -> :sswitch_0
        0xc5 -> :sswitch_0
        0xc023 -> :sswitch_0
        0xc024 -> :sswitch_0
        0xc025 -> :sswitch_0
        0xc026 -> :sswitch_0
        0xc027 -> :sswitch_0
        0xc028 -> :sswitch_0
        0xc029 -> :sswitch_0
        0xc02a -> :sswitch_0
        0xc02b -> :sswitch_0
        0xc02c -> :sswitch_0
        0xc02d -> :sswitch_0
        0xc02e -> :sswitch_0
        0xc02f -> :sswitch_0
        0xc030 -> :sswitch_0
        0xc031 -> :sswitch_0
        0xc032 -> :sswitch_0
        0xc072 -> :sswitch_0
        0xc073 -> :sswitch_0
        0xc074 -> :sswitch_0
        0xc075 -> :sswitch_0
        0xc076 -> :sswitch_0
        0xc077 -> :sswitch_0
        0xc078 -> :sswitch_0
        0xc079 -> :sswitch_0
        0xc07a -> :sswitch_0
        0xc07b -> :sswitch_0
        0xc07c -> :sswitch_0
        0xc07d -> :sswitch_0
        0xc07e -> :sswitch_0
        0xc07f -> :sswitch_0
        0xc080 -> :sswitch_0
        0xc081 -> :sswitch_0
        0xc082 -> :sswitch_0
        0xc083 -> :sswitch_0
        0xc084 -> :sswitch_0
        0xc085 -> :sswitch_0
        0xc086 -> :sswitch_0
        0xc087 -> :sswitch_0
        0xc088 -> :sswitch_0
        0xc089 -> :sswitch_0
        0xc08a -> :sswitch_0
        0xc08b -> :sswitch_0
        0xc08c -> :sswitch_0
        0xc08d -> :sswitch_0
        0xc08e -> :sswitch_0
        0xc08f -> :sswitch_0
        0xc090 -> :sswitch_0
        0xc091 -> :sswitch_0
        0xc092 -> :sswitch_0
        0xc093 -> :sswitch_0
        0xc09c -> :sswitch_0
        0xc09d -> :sswitch_0
        0xc09e -> :sswitch_0
        0xc09f -> :sswitch_0
        0xc0a0 -> :sswitch_0
        0xc0a1 -> :sswitch_0
        0xc0a2 -> :sswitch_0
        0xc0a3 -> :sswitch_0
        0xc0a4 -> :sswitch_0
        0xc0a5 -> :sswitch_0
        0xc0a6 -> :sswitch_0
        0xc0a7 -> :sswitch_0
        0xc0a8 -> :sswitch_0
        0xc0a9 -> :sswitch_0
        0xc0aa -> :sswitch_0
        0xc0ab -> :sswitch_0
        0xcc13 -> :sswitch_0
        0xcc14 -> :sswitch_0
        0xcc15 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getOIDForHashAlgorithm(S)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 2
    .param p0, "hashAlgorithm"    # S

    .prologue
    .line 1150
    packed-switch p0, :pswitch_data_0

    .line 1165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown HashAlgorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1153
    :pswitch_0
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 1163
    :goto_0
    return-object v0

    .line 1155
    :pswitch_1
    sget-object v0, Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;->id_SHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    .line 1157
    :pswitch_2
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    .line 1159
    :pswitch_3
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    .line 1161
    :pswitch_4
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    .line 1163
    :pswitch_5
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    .line 1150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .param p1, "extensionType"    # Ljava/lang/Integer;
    .param p2, "alertDescription"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 719
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    .line 720
    .local v0, "extension_data":[B
    if-nez v0, :cond_0

    .line 722
    const/4 v1, 0x0

    .line 728
    :goto_0
    return v1

    .line 724
    :cond_0
    array-length v1, v0

    if-eqz v1, :cond_1

    .line 726
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v1, p2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 728
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static hasSigningCapability(S)Z
    .locals 1
    .param p0, "clientCertificateType"    # S

    .prologue
    .line 1256
    sparse-switch p0, :sswitch_data_0

    .line 1263
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1261
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1256
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method static hmac_hash(Lorg/spongycastle/crypto/Digest;[B[B[B)V
    .locals 11
    .param p0, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p1, "secret"    # [B
    .param p2, "seed"    # [B
    .param p3, "out"    # [B

    .prologue
    const/4 v10, 0x0

    .line 930
    new-instance v5, Lorg/spongycastle/crypto/macs/HMac;

    invoke-direct {v5, p0}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 931
    .local v5, "mac":Lorg/spongycastle/crypto/macs/HMac;
    new-instance v7, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v7, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v5, v7}, Lorg/spongycastle/crypto/macs/HMac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 932
    move-object v0, p2

    .line 933
    .local v0, "a":[B
    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    .line 934
    .local v6, "size":I
    array-length v7, p3

    add-int/2addr v7, v6

    add-int/lit8 v7, v7, -0x1

    div-int v4, v7, v6

    .line 935
    .local v4, "iterations":I
    invoke-virtual {v5}, Lorg/spongycastle/crypto/macs/HMac;->getMacSize()I

    move-result v7

    new-array v1, v7, [B

    .line 936
    .local v1, "buf":[B
    invoke-virtual {v5}, Lorg/spongycastle/crypto/macs/HMac;->getMacSize()I

    move-result v7

    new-array v2, v7, [B

    .line 937
    .local v2, "buf2":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 939
    array-length v7, v0

    invoke-virtual {v5, v0, v10, v7}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 940
    invoke-virtual {v5, v1, v10}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 941
    move-object v0, v1

    .line 942
    array-length v7, v0

    invoke-virtual {v5, v0, v10, v7}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 943
    array-length v7, p2

    invoke-virtual {v5, p2, v10, v7}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 944
    invoke-virtual {v5, v2, v10}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 945
    mul-int v7, v6, v3

    array-length v8, p3

    mul-int v9, v6, v3

    sub-int/2addr v8, v9

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v2, v10, p3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 937
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 947
    :cond_0
    return-void
.end method

.method public static isBlockCipherSuite(I)Z
    .locals 2
    .param p0, "ciphersuite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1768
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getCipherType(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSSL(Lorg/spongycastle/crypto/tls/TlsContext;)Z
    .locals 1
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;

    .prologue
    .line 182
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isSSL()Z

    move-result v0

    return v0
.end method

.method public static isSignatureAlgorithmsExtensionAllowed(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z
    .locals 2
    .param p0, "clientVersion"    # Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .prologue
    .line 738
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv12:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getEquivalentTLSVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    return v0
.end method

.method public static isTLSv11(Lorg/spongycastle/crypto/tls/TlsContext;)Z
    .locals 2
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;

    .prologue
    .line 187
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv11:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getEquivalentTLSVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    return v0
.end method

.method public static isTLSv12(Lorg/spongycastle/crypto/tls/TlsContext;)Z
    .locals 2
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;

    .prologue
    .line 192
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv12:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getEquivalentTLSVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    return v0
.end method

.method public static isValidCipherSuiteForVersion(ILorg/spongycastle/crypto/tls/ProtocolVersion;)Z
    .locals 2
    .param p0, "cipherSuite"    # I
    .param p1, "serverVersion"    # Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .prologue
    .line 1778
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getMinimumVersion(I)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getEquivalentTLSVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    return v0
.end method

.method public static isValidUint16(I)Z
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 147
    const v0, 0xffff

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidUint24(I)Z
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 157
    const v0, 0xffffff

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidUint8(I)Z
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 137
    and-int/lit16 v0, p0, 0xff

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidUint8(S)Z
    .locals 1
    .param p0, "i"    # S

    .prologue
    .line 132
    and-int/lit16 v0, p0, 0xff

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseSupportedSignatureAlgorithms(ZLjava/io/InputStream;)Ljava/util/Vector;
    .locals 7
    .param p0, "allowAnonymous"    # Z
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 845
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v3

    .line 846
    .local v3, "length":I
    const/4 v5, 0x2

    if-lt v3, v5, :cond_0

    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_1

    .line 848
    :cond_0
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v6, 0x32

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 850
    :cond_1
    div-int/lit8 v0, v3, 0x2

    .line 851
    .local v0, "count":I
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4, v0}, Ljava/util/Vector;-><init>(I)V

    .line 852
    .local v4, "supportedSignatureAlgorithms":Ljava/util/Vector;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 854
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v1

    .line 855
    .local v1, "entry":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    if-nez p0, :cond_2

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v5

    if-nez v5, :cond_2

    .line 861
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v6, 0x2f

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 863
    :cond_2
    invoke-virtual {v4, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 852
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 865
    .end local v1    # "entry":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    :cond_3
    return-object v4
.end method

.method public static readASN1Object([B)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4
    .param p0, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x32

    .line 646
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 647
    .local v0, "asn1":Lorg/spongycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 648
    .local v1, "result":Lorg/spongycastle/asn1/ASN1Primitive;
    if-nez v1, :cond_0

    .line 650
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2

    .line 652
    :cond_0
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 654
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2

    .line 656
    :cond_1
    return-object v1
.end method

.method public static readAllOrNothing(ILjava/io/InputStream;)[B
    .locals 3
    .param p0, "length"    # I
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 523
    const/4 v2, 0x1

    if-ge p0, v2, :cond_1

    .line 525
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    .line 537
    :cond_0
    :goto_0
    return-object v0

    .line 527
    :cond_1
    new-array v0, p0, [B

    .line 528
    .local v0, "buf":[B
    invoke-static {p1, v0}, Lorg/spongycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    .line 529
    .local v1, "read":I
    if-nez v1, :cond_2

    .line 531
    const/4 v0, 0x0

    goto :goto_0

    .line 533
    :cond_2
    if-eq v1, p0, :cond_0

    .line 535
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public static readDERObject([B)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4
    .param p0, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 665
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readASN1Object([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 666
    .local v1, "result":Lorg/spongycastle/asn1/ASN1Primitive;
    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    .line 667
    .local v0, "check":[B
    invoke-static {v0, p0}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 669
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2

    .line 671
    :cond_0
    return-object v1
.end method

.method public static readFully(ILjava/io/InputStream;)[B
    .locals 2
    .param p0, "length"    # I
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 543
    const/4 v1, 0x1

    if-ge p0, v1, :cond_1

    .line 545
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    .line 552
    :cond_0
    return-object v0

    .line 547
    :cond_1
    new-array v0, p0, [B

    .line 548
    .local v0, "buf":[B
    invoke-static {p1, v0}, Lorg/spongycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    if-eq p0, v1, :cond_0

    .line 550
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public static readOpaque16(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 575
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v0

    .line 576
    .local v0, "length":I
    invoke-static {v0, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v1

    return-object v1
.end method

.method public static readOpaque24(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 582
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result v0

    .line 583
    .local v0, "length":I
    invoke-static {v0, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v1

    return-object v1
.end method

.method public static readOpaque8(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 568
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    .line 569
    .local v0, "length":S
    invoke-static {v0, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v1

    return-object v1
.end method

.method public static readUint16(Ljava/io/InputStream;)I
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 446
    .local v0, "i1":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 447
    .local v1, "i2":I
    if-gez v1, :cond_0

    .line 449
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 451
    :cond_0
    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v2, v1

    return v2
.end method

.method public static readUint16([BI)I
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 456
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v1, 0x8

    .line 457
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 458
    return v0
.end method

.method public static readUint16Array(ILjava/io/InputStream;)[I
    .locals 3
    .param p0, "count"    # I
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 600
    new-array v1, p0, [I

    .line 601
    .local v1, "uints":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 603
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v2

    aput v2, v1, v0

    .line 601
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 605
    :cond_0
    return-object v1
.end method

.method public static readUint24(Ljava/io/InputStream;)I
    .locals 5
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 464
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 465
    .local v0, "i1":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 466
    .local v1, "i2":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 467
    .local v2, "i3":I
    if-gez v2, :cond_0

    .line 469
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 471
    :cond_0
    shl-int/lit8 v3, v0, 0x10

    shl-int/lit8 v4, v1, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v2

    return v3
.end method

.method public static readUint32(Ljava/io/InputStream;)J
    .locals 8
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 485
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 486
    .local v0, "i1":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 487
    .local v1, "i2":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 488
    .local v2, "i3":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 489
    .local v3, "i4":I
    if-gez v3, :cond_0

    .line 491
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 493
    :cond_0
    shl-int/lit8 v4, v0, 0x2

    shl-int/lit8 v5, v1, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    return-wide v4
.end method

.method public static readUint8(Ljava/io/InputStream;)S
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 430
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 432
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 434
    :cond_0
    int-to-short v1, v0

    return v1
.end method

.method public static readUint8([BI)S
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 439
    aget-byte v0, p0, p1

    int-to-short v0, v0

    return v0
.end method

.method public static readUint8Array(ILjava/io/InputStream;)[S
    .locals 3
    .param p0, "count"    # I
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 589
    new-array v1, p0, [S

    .line 590
    .local v1, "uints":[S
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 592
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v2

    aput-short v2, v1, v0

    .line 590
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 594
    :cond_0
    return-object v1
.end method

.method public static readVersion(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 617
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 618
    .local v0, "i1":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 619
    .local v1, "i2":I
    if-gez v1, :cond_0

    .line 621
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 623
    :cond_0
    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->get(II)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v2

    return-object v2
.end method

.method public static readVersion([BI)Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 611
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->get(II)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public static readVersionRaw([BI)I
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 629
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method static trackHashAlgorithms(Lorg/spongycastle/crypto/tls/TlsHandshakeHash;Ljava/util/Vector;)V
    .locals 4
    .param p0, "handshakeHash"    # Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .param p1, "supportedSignatureAlgorithms"    # Ljava/util/Vector;

    .prologue
    .line 1242
    if-eqz p1, :cond_0

    .line 1244
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1246
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    .line 1248
    .local v2, "signatureAndHashAlgorithm":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v0

    .line 1249
    .local v0, "hashAlgorithm":S
    invoke-interface {p0, v0}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->trackHashAlgorithm(S)V

    .line 1244
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1252
    .end local v0    # "hashAlgorithm":S
    .end local v1    # "i":I
    .end local v2    # "signatureAndHashAlgorithm":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    :cond_0
    return-void
.end method

.method static validateKeyUsage(Lorg/spongycastle/asn1/x509/Certificate;I)V
    .locals 5
    .param p0, "c"    # Lorg/spongycastle/asn1/x509/Certificate;
    .param p1, "keyUsageBits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 952
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/Certificate;->getTBSCertificate()Lorg/spongycastle/asn1/x509/TBSCertificate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/TBSCertificate;->getExtensions()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v1

    .line 953
    .local v1, "exts":Lorg/spongycastle/asn1/x509/Extensions;
    if-eqz v1, :cond_0

    .line 955
    invoke-static {v1}, Lorg/spongycastle/asn1/x509/KeyUsage;->fromExtensions(Lorg/spongycastle/asn1/x509/Extensions;)Lorg/spongycastle/asn1/x509/KeyUsage;

    move-result-object v2

    .line 956
    .local v2, "ku":Lorg/spongycastle/asn1/x509/KeyUsage;
    if-eqz v2, :cond_0

    .line 958
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/KeyUsage;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    .line 959
    .local v0, "bits":I
    and-int v3, v0, p1

    if-eq v3, p1, :cond_0

    .line 961
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0x2e

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 965
    .end local v0    # "bits":I
    .end local v2    # "ku":Lorg/spongycastle/asn1/x509/KeyUsage;
    :cond_0
    return-void
.end method

.method private static vectorOfOne(Ljava/lang/Object;)Ljava/util/Vector;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1303
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 1304
    .local v0, "v":Ljava/util/Vector;
    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1305
    return-object v0
.end method

.method public static writeOpaque16([BLjava/io/OutputStream;)V
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    array-length v0, p0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    .line 320
    array-length v0, p0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 321
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 322
    return-void
.end method

.method public static writeOpaque24([BLjava/io/OutputStream;)V
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    array-length v0, p0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint24(I)V

    .line 328
    array-length v0, p0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    .line 329
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 330
    return-void
.end method

.method public static writeOpaque8([BLjava/io/OutputStream;)V
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    array-length v0, p0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint8(I)V

    .line 312
    array-length v0, p0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(ILjava/io/OutputStream;)V

    .line 313
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 314
    return-void
.end method

.method public static writeUint16(ILjava/io/OutputStream;)V
    .locals 1
    .param p0, "i"    # I
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    ushr-int/lit8 v0, p0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 221
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    .line 222
    return-void
.end method

.method public static writeUint16(I[BI)V
    .locals 2
    .param p0, "i"    # I
    .param p1, "buf"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 226
    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 227
    add-int/lit8 v0, p2, 0x1

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    .line 228
    return-void
.end method

.method public static writeUint24(ILjava/io/OutputStream;)V
    .locals 1
    .param p0, "i"    # I
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 234
    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 235
    int-to-byte v0, p0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 236
    return-void
.end method

.method public static writeUint24(I[BI)V
    .locals 2
    .param p0, "i"    # I
    .param p1, "buf"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 240
    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 241
    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 242
    add-int/lit8 v0, p2, 0x2

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    .line 243
    return-void
.end method

.method public static writeUint32(JLjava/io/OutputStream;)V
    .locals 2
    .param p0, "i"    # J
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    const/16 v0, 0x18

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 249
    const/16 v0, 0x10

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 250
    const/16 v0, 0x8

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 251
    long-to-int v0, p0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 252
    return-void
.end method

.method public static writeUint64(J[BI)V
    .locals 4
    .param p0, "i"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I

    .prologue
    .line 298
    const/16 v0, 0x38

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 299
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x30

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 300
    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x28

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 301
    add-int/lit8 v0, p3, 0x3

    const/16 v1, 0x20

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 302
    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x18

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 303
    add-int/lit8 v0, p3, 0x5

    const/16 v1, 0x10

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 304
    add-int/lit8 v0, p3, 0x6

    const/16 v1, 0x8

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 305
    add-int/lit8 v0, p3, 0x7

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 306
    return-void
.end method

.method public static writeUint8(ILjava/io/OutputStream;)V
    .locals 0
    .param p0, "i"    # I
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    .line 205
    return-void
.end method

.method public static writeUint8(SLjava/io/OutputStream;)V
    .locals 0
    .param p0, "i"    # S
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    .line 199
    return-void
.end method

.method public static writeUint8(S[BI)V
    .locals 1
    .param p0, "i"    # S
    .param p1, "buf"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 209
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 210
    return-void
.end method

.method public static writeUint8Array([SLjava/io/OutputStream;)V
    .locals 2
    .param p0, "uints"    # [S
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 337
    aget-short v1, p0, v0

    invoke-static {v1, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    :cond_0
    return-void
.end method

.method public static writeUint8ArrayWithUint8Length([SLjava/io/OutputStream;)V
    .locals 1
    .param p0, "uints"    # [S
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    array-length v0, p0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint8(I)V

    .line 355
    array-length v0, p0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(ILjava/io/OutputStream;)V

    .line 356
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8Array([SLjava/io/OutputStream;)V

    .line 357
    return-void
.end method

.method public static writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "version"    # Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 686
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 687
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 688
    return-void
.end method

.method public static writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;[BI)V
    .locals 2
    .param p0, "version"    # Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .param p1, "buf"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 692
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 693
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 694
    return-void
.end method
