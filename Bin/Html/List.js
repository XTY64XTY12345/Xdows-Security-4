function GetListData(a,b) {
const table = document.querySelector(a);

if (table) {
  // �ռ����з���������������
  const output = Array.from(table.rows)
    .map((row, rowIndex) => {
      const secondCell = row.cells[b];
      // ������ͷ�ͷ����ݵ�Ԫ��
      if (!secondCell || secondCell.tagName === 'TH') return null;
      return `${secondCell.textContent.trim()}`;
    })
    .filter(item => item !== null) // ���˿���
    .join('|||'); // �� ||| ����������

  // ��������������������ݣ�
  if (output) {
    return output;
  } else {
  return "Error";
  }
} else {
  return "Error";
}

}