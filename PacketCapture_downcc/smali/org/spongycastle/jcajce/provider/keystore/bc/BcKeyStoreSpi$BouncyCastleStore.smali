.class public Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;
.super Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.source "BcKeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BouncyCastleStore"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 938
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;-><init>(I)V

    .line 939
    return-void
.end method


# virtual methods
.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 14
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 946
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 948
    if-nez p1, :cond_1

    .line 1012
    :cond_0
    return-void

    .line 953
    :cond_1
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 954
    .local v8, "dIn":Ljava/io/DataInputStream;
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 956
    .local v13, "version":I
    const/4 v0, 0x2

    if-eq v13, v0, :cond_2

    .line 958
    if-eqz v13, :cond_2

    const/4 v0, 0x1

    if-eq v13, v0, :cond_2

    .line 960
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Wrong version of key store."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 964
    :cond_2
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v4, v0, [B

    .line 966
    .local v4, "salt":[B
    array-length v0, v4

    const/16 v2, 0x14

    if-eq v0, v2, :cond_3

    .line 968
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Key store corrupted."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 971
    :cond_3
    invoke-virtual {v8, v4}, Ljava/io/DataInputStream;->readFully([B)V

    .line 973
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 975
    .local v5, "iterationCount":I
    if-ltz v5, :cond_4

    const/16 v0, 0x1000

    if-le v5, v0, :cond_5

    .line 977
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Key store corrupted."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 981
    :cond_5
    if-nez v13, :cond_6

    .line 983
    const-string v1, "OldPBEWithSHAAndTwofish-CBC"

    .line 990
    .local v1, "cipherAlg":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x2

    move-object v0, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 991
    .local v7, "cipher":Ljavax/crypto/Cipher;
    new-instance v6, Ljavax/crypto/CipherInputStream;

    invoke-direct {v6, v8, v7}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 993
    .local v6, "cIn":Ljavax/crypto/CipherInputStream;
    new-instance v10, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v10}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    .line 994
    .local v10, "dig":Lorg/spongycastle/crypto/Digest;
    new-instance v9, Lorg/spongycastle/crypto/io/DigestInputStream;

    invoke-direct {v9, v6, v10}, Lorg/spongycastle/crypto/io/DigestInputStream;-><init>(Ljava/io/InputStream;Lorg/spongycastle/crypto/Digest;)V

    .line 996
    .local v9, "dgIn":Lorg/spongycastle/crypto/io/DigestInputStream;
    invoke-virtual {p0, v9}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->loadStore(Ljava/io/InputStream;)V

    .line 999
    invoke-interface {v10}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v11, v0, [B

    .line 1000
    .local v11, "hash":[B
    const/4 v0, 0x0

    invoke-interface {v10, v11, v0}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 1004
    invoke-interface {v10}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v12, v0, [B

    .line 1005
    .local v12, "oldHash":[B
    invoke-static {v6, v12}, Lorg/spongycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    .line 1007
    invoke-static {v11, v12}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1009
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1010
    new-instance v0, Ljava/io/IOException;

    const-string v2, "KeyStore integrity check failed."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 987
    .end local v1    # "cipherAlg":Ljava/lang/String;
    .end local v6    # "cIn":Ljavax/crypto/CipherInputStream;
    .end local v7    # "cipher":Ljavax/crypto/Cipher;
    .end local v9    # "dgIn":Lorg/spongycastle/crypto/io/DigestInputStream;
    .end local v10    # "dig":Lorg/spongycastle/crypto/Digest;
    .end local v11    # "hash":[B
    .end local v12    # "oldHash":[B
    :cond_6
    const-string v1, "PBEWithSHAAndTwofish-CBC"

    .restart local v1    # "cipherAlg":Ljava/lang/String;
    goto :goto_0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 11
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1018
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1019
    .local v8, "dOut":Ljava/io/DataOutputStream;
    const/16 v0, 0x14

    new-array v4, v0, [B

    .line 1020
    .local v4, "salt":[B
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    and-int/lit16 v0, v0, 0x3ff

    add-int/lit16 v5, v0, 0x400

    .line 1022
    .local v5, "iterationCount":I
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1024
    iget v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->version:I

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1025
    array-length v0, v4

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1026
    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 1027
    invoke-virtual {v8, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1029
    const-string v1, "PBEWithSHAAndTwofish-CBC"

    const/4 v2, 0x1

    move-object v0, p0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 1031
    .local v7, "cipher":Ljavax/crypto/Cipher;
    new-instance v6, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v6, v8, v7}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 1032
    .local v6, "cOut":Ljavax/crypto/CipherOutputStream;
    new-instance v9, Lorg/spongycastle/crypto/io/DigestOutputStream;

    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v9, v0}, Lorg/spongycastle/crypto/io/DigestOutputStream;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 1034
    .local v9, "dgOut":Lorg/spongycastle/crypto/io/DigestOutputStream;
    new-instance v0, Lorg/spongycastle/util/io/TeeOutputStream;

    invoke-direct {v0, v6, v9}, Lorg/spongycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->saveStore(Ljava/io/OutputStream;)V

    .line 1036
    invoke-virtual {v9}, Lorg/spongycastle/crypto/io/DigestOutputStream;->getDigest()[B

    move-result-object v10

    .line 1038
    .local v10, "dig":[B
    invoke-virtual {v6, v10}, Ljavax/crypto/CipherOutputStream;->write([B)V

    .line 1040
    invoke-virtual {v6}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 1041
    return-void
.end method
