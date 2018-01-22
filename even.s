.globl f

f:
/* %rdi, %rsi, %rdx -> XYZ, a=%rcx, b=%rbx ret=%rax   */
	imulq %rdi, %rdi /* pow(x,2) */
	imulq %rsi, %rsi /* pow(y,2) */
	movq %rdx, %rcx /* long a = z */
	imulq %rdx, %rdx /* pow(z,2) */
	imulq %rdx, %rcx /* a*=pow(z,2) */
	movq %rdi, %rbx /* b=x^2 */
	addq %rsi, %rbx /* b=x^2+y^2 */
	/* return a!=b -> z^3 != x^2 + y^2 */
	cmpq %rcx, %rbx 
	setne %al
	movzbl %al, %eax
	ret
