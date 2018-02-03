.class Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
.super Ljava/lang/Object;
.source "BcKeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreEntry"
.end annotation


# instance fields
.field alias:Ljava/lang/String;

.field certChain:[Ljava/security/cert/Certificate;

.field date:Ljava/util/Date;

.field obj:Ljava/lang/Object;

.field final synthetic this$0:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

.field type:I


# direct methods
.method constructor <init>(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 10
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "password"    # [C
    .param p5, "certChain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 131
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    .line 132
    const/4 v0, 0x4

    iput v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    .line 133
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    .line 134
    iput-object p5, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    .line 136
    const/16 v0, 0x14

    new-array v4, v0, [B

    .line 138
    .local v4, "salt":[B
    iget-object v0, p1, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/security/SecureRandom;->setSeed(J)V

    .line 139
    iget-object v0, p1, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 141
    iget-object v0, p1, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    and-int/lit16 v0, v0, 0x3ff

    add-int/lit16 v5, v0, 0x400

    .line 144
    .local v5, "iterationCount":I
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 145
    .local v6, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 147
    .local v9, "dOut":Ljava/io/DataOutputStream;
    array-length v0, v4

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 148
    invoke-virtual {v9, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 149
    invoke-virtual {v9, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 151
    const-string v1, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v2, 0x1

    move-object v0, p1

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v8

    .line 152
    .local v8, "cipher":Ljavax/crypto/Cipher;
    new-instance v7, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v7, v9, v8}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 154
    .local v7, "cOut":Ljavax/crypto/CipherOutputStream;
    new-instance v9, Ljava/io/DataOutputStream;

    .end local v9    # "dOut":Ljava/io/DataOutputStream;
    invoke-direct {v9, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 156
    .restart local v9    # "dOut":Ljava/io/DataOutputStream;
    invoke-static {p1, p3, v9}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->access$000(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/security/Key;Ljava/io/DataOutputStream;)V

    .line 158
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 160
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    .line 161
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 1
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "obj"    # Ljava/security/cert/Certificate;

    .prologue
    .line 107
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    .line 108
    const/4 v0, 0x1

    iput v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    .line 109
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    .line 110
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    .line 112
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;)V
    .locals 1
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "date"    # Ljava/util/Date;
    .param p4, "type"    # I
    .param p5, "obj"    # Ljava/lang/Object;

    .prologue
    .line 168
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    .line 169
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    .line 170
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    .line 171
    iput p4, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    .line 172
    iput-object p5, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    .line 173
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;[Ljava/security/cert/Certificate;)V
    .locals 1
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "date"    # Ljava/util/Date;
    .param p4, "type"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "certChain"    # [Ljava/security/cert/Certificate;

    .prologue
    .line 181
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    .line 182
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    .line 183
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    .line 184
    iput p4, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    .line 185
    iput-object p5, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    .line 186
    iput-object p6, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    .line 187
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 1
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "obj"    # [B
    .param p4, "certChain"    # [Ljava/security/cert/Certificate;

    .prologue
    .line 118
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    .line 119
    const/4 v0, 0x3

    iput v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    .line 120
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    .line 121
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    .line 122
    iput-object p4, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    .line 123
    return-void
.end method


# virtual methods
.method getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    return-object v0
.end method

.method getCertificateChain()[Ljava/security/cert/Certificate;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    return-object v0
.end method

.method getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method getObject([C)Ljava/lang/Object;
    .locals 21
    .param p1, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 208
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v1, v0

    if-nez v1, :cond_1

    .line 210
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/security/Key;

    if-eqz v1, :cond_1

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 299
    :goto_0
    return-object v17

    .line 216
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 218
    new-instance v7, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {v7, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 219
    .local v7, "bIn":Ljava/io/ByteArrayInputStream;
    new-instance v13, Ljava/io/DataInputStream;

    invoke-direct {v13, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 223
    .local v13, "dIn":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v5, v1, [B

    .line 225
    .local v5, "salt":[B
    invoke-virtual {v13, v5}, Ljava/io/DataInputStream;->readFully([B)V

    .line 227
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 229
    .local v6, "iterationCount":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    const-string v2, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v3, 0x2

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v12

    .line 231
    .local v12, "cipher":Ljavax/crypto/Cipher;
    new-instance v10, Ljavax/crypto/CipherInputStream;

    invoke-direct {v10, v13, v12}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 235
    .local v10, "cIn":Ljavax/crypto/CipherInputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, v2}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->access$100(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/io/DataInputStream;)Ljava/security/Key;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v17

    goto :goto_0

    .line 237
    :catch_0
    move-exception v19

    .line 239
    .local v19, "x":Ljava/lang/Exception;
    :try_start_2
    new-instance v8, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {v8, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 240
    .end local v7    # "bIn":Ljava/io/ByteArrayInputStream;
    .local v8, "bIn":Ljava/io/ByteArrayInputStream;
    :try_start_3
    new-instance v14, Ljava/io/DataInputStream;

    invoke-direct {v14, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 242
    .end local v13    # "dIn":Ljava/io/DataInputStream;
    .local v14, "dIn":Ljava/io/DataInputStream;
    :try_start_4
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v5, v1, [B

    .line 244
    invoke-virtual {v14, v5}, Ljava/io/DataInputStream;->readFully([B)V

    .line 246
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 248
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    const-string v2, "BrokenPBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v3, 0x2

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v12

    .line 250
    new-instance v10, Ljavax/crypto/CipherInputStream;

    .end local v10    # "cIn":Ljavax/crypto/CipherInputStream;
    invoke-direct {v10, v14, v12}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 252
    .restart local v10    # "cIn":Ljavax/crypto/CipherInputStream;
    const/16 v17, 0x0

    .line 256
    .local v17, "k":Ljava/security/Key;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, v2}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->access$100(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/io/DataInputStream;)Ljava/security/Key;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v17

    move-object v13, v14

    .end local v14    # "dIn":Ljava/io/DataInputStream;
    .restart local v13    # "dIn":Ljava/io/DataInputStream;
    move-object v7, v8

    .line 279
    .end local v8    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v7    # "bIn":Ljava/io/ByteArrayInputStream;
    :goto_1
    if-eqz v17, :cond_2

    .line 281
    :try_start_6
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 282
    .local v9, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v15, Ljava/io/DataOutputStream;

    invoke-direct {v15, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 284
    .local v15, "dOut":Ljava/io/DataOutputStream;
    array-length v1, v5

    invoke-virtual {v15, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 285
    invoke-virtual {v15, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 286
    invoke-virtual {v15, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 288
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    const-string v2, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v3, 0x1

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v18

    .line 289
    .local v18, "out":Ljavax/crypto/Cipher;
    new-instance v11, Ljavax/crypto/CipherOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v11, v15, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 291
    .local v11, "cOut":Ljavax/crypto/CipherOutputStream;
    new-instance v15, Ljava/io/DataOutputStream;

    .end local v15    # "dOut":Ljava/io/DataOutputStream;
    invoke-direct {v15, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 293
    .restart local v15    # "dOut":Ljava/io/DataOutputStream;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    move-object/from16 v0, v17

    invoke-static {v1, v0, v15}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->access$000(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/security/Key;Ljava/io/DataOutputStream;)V

    .line 295
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V

    .line 297
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 307
    .end local v5    # "salt":[B
    .end local v6    # "iterationCount":I
    .end local v9    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "cIn":Ljavax/crypto/CipherInputStream;
    .end local v11    # "cOut":Ljavax/crypto/CipherOutputStream;
    .end local v12    # "cipher":Ljavax/crypto/Cipher;
    .end local v15    # "dOut":Ljava/io/DataOutputStream;
    .end local v17    # "k":Ljava/security/Key;
    .end local v18    # "out":Ljavax/crypto/Cipher;
    .end local v19    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v16

    .line 309
    .local v16, "e":Ljava/lang/Exception;
    :goto_2
    new-instance v1, Ljava/security/UnrecoverableKeyException;

    const-string v2, "no match"

    invoke-direct {v1, v2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    .end local v7    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v13    # "dIn":Ljava/io/DataInputStream;
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v5    # "salt":[B
    .restart local v6    # "iterationCount":I
    .restart local v8    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v10    # "cIn":Ljavax/crypto/CipherInputStream;
    .restart local v12    # "cipher":Ljavax/crypto/Cipher;
    .restart local v14    # "dIn":Ljava/io/DataInputStream;
    .restart local v17    # "k":Ljava/security/Key;
    .restart local v19    # "x":Ljava/lang/Exception;
    :catch_2
    move-exception v20

    .line 260
    .local v20, "y":Ljava/lang/Exception;
    :try_start_7
    new-instance v7, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {v7, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 261
    .end local v8    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v7    # "bIn":Ljava/io/ByteArrayInputStream;
    :try_start_8
    new-instance v13, Ljava/io/DataInputStream;

    invoke-direct {v13, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 263
    .end local v14    # "dIn":Ljava/io/DataInputStream;
    .restart local v13    # "dIn":Ljava/io/DataInputStream;
    :try_start_9
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v5, v1, [B

    .line 265
    invoke-virtual {v13, v5}, Ljava/io/DataInputStream;->readFully([B)V

    .line 267
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 269
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    const-string v2, "OldPBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v3, 0x2

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v12

    .line 271
    new-instance v10, Ljavax/crypto/CipherInputStream;

    .end local v10    # "cIn":Ljavax/crypto/CipherInputStream;
    invoke-direct {v10, v13, v12}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 273
    .restart local v10    # "cIn":Ljavax/crypto/CipherInputStream;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, v2}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->access$100(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object v17

    goto/16 :goto_1

    .line 303
    .end local v20    # "y":Ljava/lang/Exception;
    :cond_2
    new-instance v1, Ljava/security/UnrecoverableKeyException;

    const-string v2, "no match"

    invoke-direct {v1, v2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 314
    .end local v5    # "salt":[B
    .end local v6    # "iterationCount":I
    .end local v7    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v10    # "cIn":Ljavax/crypto/CipherInputStream;
    .end local v12    # "cipher":Ljavax/crypto/Cipher;
    .end local v13    # "dIn":Ljava/io/DataInputStream;
    .end local v17    # "k":Ljava/security/Key;
    .end local v19    # "x":Ljava/lang/Exception;
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "forget something!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 307
    .restart local v5    # "salt":[B
    .restart local v6    # "iterationCount":I
    .restart local v8    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v10    # "cIn":Ljavax/crypto/CipherInputStream;
    .restart local v12    # "cipher":Ljavax/crypto/Cipher;
    .restart local v13    # "dIn":Ljava/io/DataInputStream;
    .restart local v19    # "x":Ljava/lang/Exception;
    :catch_3
    move-exception v16

    move-object v7, v8

    .end local v8    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v7    # "bIn":Ljava/io/ByteArrayInputStream;
    goto :goto_2

    .end local v7    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v10    # "cIn":Ljavax/crypto/CipherInputStream;
    .end local v13    # "dIn":Ljava/io/DataInputStream;
    .restart local v8    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v14    # "dIn":Ljava/io/DataInputStream;
    :catch_4
    move-exception v16

    move-object v13, v14

    .end local v14    # "dIn":Ljava/io/DataInputStream;
    .restart local v13    # "dIn":Ljava/io/DataInputStream;
    move-object v7, v8

    .end local v8    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v7    # "bIn":Ljava/io/ByteArrayInputStream;
    goto :goto_2

    .end local v13    # "dIn":Ljava/io/DataInputStream;
    .restart local v10    # "cIn":Ljavax/crypto/CipherInputStream;
    .restart local v14    # "dIn":Ljava/io/DataInputStream;
    .restart local v17    # "k":Ljava/security/Key;
    .restart local v20    # "y":Ljava/lang/Exception;
    :catch_5
    move-exception v16

    move-object v13, v14

    .end local v14    # "dIn":Ljava/io/DataInputStream;
    .restart local v13    # "dIn":Ljava/io/DataInputStream;
    goto :goto_2
.end method

.method getType()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    return v0
.end method
