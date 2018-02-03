.class public Lorg/spongycastle/asn1/eac/CVCertificateRequest;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CVCertificateRequest.java"


# static fields
.field public static ZeroArray:[B

.field private static bodyValid:I

.field private static signValid:I


# instance fields
.field private certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

.field private innerSignature:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 29
    sput v2, Lorg/spongycastle/asn1/eac/CVCertificateRequest;->bodyValid:I

    .line 30
    const/4 v0, 0x2

    sput v0, Lorg/spongycastle/asn1/eac/CVCertificateRequest;->signValid:I

    .line 103
    new-array v0, v2, [B

    aput-byte v1, v0, v1

    sput-object v0, Lorg/spongycastle/asn1/eac/CVCertificateRequest;->ZeroArray:[B

    return-void
.end method


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 7

    .prologue
    .line 155
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 157
    .local v1, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v2, p0, Lorg/spongycastle/asn1/eac/CVCertificateRequest;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 161
    :try_start_0
    new-instance v2, Lorg/spongycastle/asn1/DERApplicationSpecific;

    const/4 v3, 0x0

    const/16 v4, 0x37

    new-instance v5, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v6, p0, Lorg/spongycastle/asn1/eac/CVCertificateRequest;->innerSignature:[B

    invoke-direct {v5, v6}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v2, v3, v4, v5}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    new-instance v2, Lorg/spongycastle/asn1/DERApplicationSpecific;

    const/16 v3, 0x21

    invoke-direct {v2, v3, v1}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(ILorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v2

    .line 163
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "unable to convert signature!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
