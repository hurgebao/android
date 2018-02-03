.class public Lorg/spongycastle/crypto/tls/Certificate;
.super Ljava/lang/Object;
.source "Certificate.java"


# static fields
.field public static final EMPTY_CHAIN:Lorg/spongycastle/crypto/tls/Certificate;


# instance fields
.field protected certificateList:[Lorg/spongycastle/asn1/x509/Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lorg/spongycastle/crypto/tls/Certificate;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/spongycastle/asn1/x509/Certificate;

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/Certificate;-><init>([Lorg/spongycastle/asn1/x509/Certificate;)V

    sput-object v0, Lorg/spongycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/spongycastle/crypto/tls/Certificate;

    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/x509/Certificate;)V
    .locals 2
    .param p1, "certificateList"    # [Lorg/spongycastle/asn1/x509/Certificate;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'certificateList\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/Certificate;->certificateList:[Lorg/spongycastle/asn1/x509/Certificate;

    .line 39
    return-void
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/Certificate;
    .locals 9
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result v7

    .line 117
    .local v7, "totalLength":I
    if-nez v7, :cond_0

    .line 119
    sget-object v8, Lorg/spongycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/spongycastle/crypto/tls/Certificate;

    .line 139
    :goto_0
    return-object v8

    .line 122
    :cond_0
    invoke-static {v7, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v2

    .line 124
    .local v2, "certListData":[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 126
    .local v1, "buf":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 127
    .local v4, "certificate_list":Ljava/util/Vector;
    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v8

    if-lez v8, :cond_1

    .line 129
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque24(Ljava/io/InputStream;)[B

    move-result-object v5

    .line 130
    .local v5, "derEncoding":[B
    invoke-static {v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->readDERObject([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 131
    .local v0, "asn1Cert":Lorg/spongycastle/asn1/ASN1Primitive;
    invoke-static {v0}, Lorg/spongycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 134
    .end local v0    # "asn1Cert":Lorg/spongycastle/asn1/ASN1Primitive;
    .end local v5    # "derEncoding":[B
    :cond_1
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v8

    new-array v3, v8, [Lorg/spongycastle/asn1/x509/Certificate;

    .line 135
    .local v3, "certificateList":[Lorg/spongycastle/asn1/x509/Certificate;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v6, v8, :cond_2

    .line 137
    invoke-virtual {v4, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/spongycastle/asn1/x509/Certificate;

    aput-object v8, v3, v6

    .line 135
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 139
    :cond_2
    new-instance v8, Lorg/spongycastle/crypto/tls/Certificate;

    invoke-direct {v8, v3}, Lorg/spongycastle/crypto/tls/Certificate;-><init>([Lorg/spongycastle/asn1/x509/Certificate;)V

    goto :goto_0
.end method


# virtual methods
.method protected cloneCertificateList()[Lorg/spongycastle/asn1/x509/Certificate;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 144
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/Certificate;->certificateList:[Lorg/spongycastle/asn1/x509/Certificate;

    array-length v1, v1

    new-array v0, v1, [Lorg/spongycastle/asn1/x509/Certificate;

    .line 145
    .local v0, "result":[Lorg/spongycastle/asn1/x509/Certificate;
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/Certificate;->certificateList:[Lorg/spongycastle/asn1/x509/Certificate;

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    return-object v0
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v1, Ljava/util/Vector;

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/Certificate;->certificateList:[Lorg/spongycastle/asn1/x509/Certificate;

    array-length v4, v4

    invoke-direct {v1, v4}, Ljava/util/Vector;-><init>(I)V

    .line 88
    .local v1, "derEncodings":Ljava/util/Vector;
    const/4 v3, 0x0

    .line 89
    .local v3, "totalLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/Certificate;->certificateList:[Lorg/spongycastle/asn1/x509/Certificate;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 91
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/Certificate;->certificateList:[Lorg/spongycastle/asn1/x509/Certificate;

    aget-object v4, v4, v2

    const-string v5, "DER"

    invoke-virtual {v4, v5}, Lorg/spongycastle/asn1/x509/Certificate;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    .line 92
    .local v0, "derEncoding":[B
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 93
    array-length v4, v0

    add-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "derEncoding":[B
    :cond_0
    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint24(I)V

    .line 97
    invoke-static {v3, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    .line 99
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 101
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    .line 102
    .restart local v0    # "derEncoding":[B
    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque24([BLjava/io/OutputStream;)V

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 104
    .end local v0    # "derEncoding":[B
    :cond_1
    return-void
.end method

.method public getCertificateAt(I)Lorg/spongycastle/asn1/x509/Certificate;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/Certificate;->certificateList:[Lorg/spongycastle/asn1/x509/Certificate;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getCertificateList()[Lorg/spongycastle/asn1/x509/Certificate;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/Certificate;->cloneCertificateList()[Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/Certificate;->certificateList:[Lorg/spongycastle/asn1/x509/Certificate;

    array-length v0, v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/Certificate;->certificateList:[Lorg/spongycastle/asn1/x509/Certificate;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
