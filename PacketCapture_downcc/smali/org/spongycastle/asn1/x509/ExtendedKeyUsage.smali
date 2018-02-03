.class public Lorg/spongycastle/asn1/x509/ExtendedKeyUsage;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "ExtendedKeyUsage.java"


# instance fields
.field seq:Lorg/spongycastle/asn1/ASN1Sequence;

.field usageTable:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/x509/KeyPurposeId;)V
    .locals 1
    .param p1, "usage"    # Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/ExtendedKeyUsage;->usageTable:Ljava/util/Hashtable;

    .line 82
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/ExtendedKeyUsage;->seq:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 84
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/ExtendedKeyUsage;->usageTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/ExtendedKeyUsage;->seq:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method
