package com.wshsoft.sys.service;

import com.wshsoft.sys.domain.Company;
import java.util.List;
import com.wshsoft.common.core.domain.Ztree;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * 公司 Service接口
 *
 * @author Carry xie
 * @date 2019-11-29
 */
 
public interface CompanyService extends IService<Company> {

    /**
     * 查询公司列表
     * 
     * @param company 公司
     * @return 公司集合
     */
    public List<Company> selectCompanyList(Company company);
    /**
     * 新增公司信息
     * 
     * @param company 公司信息
     * @return 结果
     */
    public int insertCompany(Company company);

    /**
     * 修改公司信息
     * 
     * @param company 公司信息
     * @return 结果
     */
    public int updateCompany(Company company);

    /**
     * 根据公司ID查询信息
     * 
     * @param companyId 公司ID
     * @return 公司信息
     */
    public Company selectCompanyById(Long companyId);
    
    /**
     * 查询公司树列表
     * 
     * @return 所有公司信息
     */
    public List<Ztree> selectCompanyTree();
    
    /**
     * 校验公司名称是否唯一
     * 
     * @param company 公司信息
     * @return 结果
     */
    public String checkCompanyNameUnique(Company company);
    
    /**
     * 查询公司个数
     * 
     * @param parentId 父公司ID
     * @return 结果
     */
    public int selectCompanyCount(Long parentId);

    /**
     * 查询公司是否存在
     * 
     * @param companyId 公司ID
     * @return 结果 true 存在 false 不存在
     */
    public boolean checkCompanyExistUse(Long companyId);   
    
}